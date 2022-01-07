
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CURLMOPT_SOCKETFUNCTION ;
 int CURLMOPT_TIMERFUNCTION ;
 int CURL_GLOBAL_ALL ;
 int UV_RUN_DEFAULT ;
 int add_download (char*,int) ;
 scalar_t__ curl_global_init (int ) ;
 int curl_handle ;
 int curl_multi_cleanup (int ) ;
 int curl_multi_init () ;
 int curl_multi_setopt (int ,int ,int ) ;
 int fprintf (int ,char*) ;
 int handle_socket ;
 int loop ;
 int start_timeout ;
 int stderr ;
 int timeout ;
 int uv_default_loop () ;
 int uv_run (int ,int ) ;
 int uv_timer_init (int ,int *) ;

int main(int argc, char **argv)
{
  loop = uv_default_loop();

  if(argc <= 1)
    return 0;

  if(curl_global_init(CURL_GLOBAL_ALL)) {
    fprintf(stderr, "Could not init curl\n");
    return 1;
  }

  uv_timer_init(loop, &timeout);

  curl_handle = curl_multi_init();
  curl_multi_setopt(curl_handle, CURLMOPT_SOCKETFUNCTION, handle_socket);
  curl_multi_setopt(curl_handle, CURLMOPT_TIMERFUNCTION, start_timeout);

  while(argc-- > 1) {
    add_download(argv[argc], argc);
  }

  uv_run(loop, UV_RUN_DEFAULT);
  curl_multi_cleanup(curl_handle);

  return 0;
}
