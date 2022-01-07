
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CURLMOPT_SOCKETFUNCTION ;
 int CURLMOPT_TIMERFUNCTION ;
 int CURL_GLOBAL_ALL ;
 int add_download (char*,int) ;
 int base ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 int curl_handle ;
 int curl_multi_cleanup (int ) ;
 int curl_multi_init () ;
 int curl_multi_setopt (int ,int ,int ) ;
 int event_base_dispatch (int ) ;
 int event_base_free (int ) ;
 int event_base_new () ;
 int event_free (int ) ;
 int evtimer_new (int ,int ,int *) ;
 int fprintf (int ,char*) ;
 int handle_socket ;
 int libevent_global_shutdown () ;
 int on_timeout ;
 int start_timeout ;
 int stderr ;
 int timeout ;

int main(int argc, char **argv)
{
  if(argc <= 1)
    return 0;

  if(curl_global_init(CURL_GLOBAL_ALL)) {
    fprintf(stderr, "Could not init curl\n");
    return 1;
  }

  base = event_base_new();
  timeout = evtimer_new(base, on_timeout, ((void*)0));

  curl_handle = curl_multi_init();
  curl_multi_setopt(curl_handle, CURLMOPT_SOCKETFUNCTION, handle_socket);
  curl_multi_setopt(curl_handle, CURLMOPT_TIMERFUNCTION, start_timeout);

  while(argc-- > 1) {
    add_download(argv[argc], argc);
  }

  event_base_dispatch(base);

  curl_multi_cleanup(curl_handle);
  event_free(timeout);
  event_base_free(base);

  libevent_global_shutdown();
  curl_global_cleanup();

  return 0;
}
