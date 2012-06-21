# Gem stuff
$:.unshift File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name = 'dogapi'
  s.version = '1.3.2.real'
  s.author = 'Datadog, Inc.'
  s.email = 'packages@datadoghq.com'
  s.homepage = 'http://datadoghq.com/'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Ruby bindings for Datadog\'s API'
  s.files         = `git ls-files app lib`.split("\n")
  s.require_paths = ['lib']
  s.test_file = 'tests/test_client.rb'
  s.license = 'BSD'

  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc']
  s.rdoc_options << '--title' << 'DogAPI -- DataDog Client' <<
                    '--main' << 'README.rdoc' <<
                    '--line-numbers' << '--inline-source'

  s.add_dependency 'json', '>= 1.5.1'
end
