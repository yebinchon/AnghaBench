
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CURLMcode ;
typedef int CURLM ;
typedef int CURL ;


 scalar_t__ CURLM_OK ;
 int CURLOPT_URL ;
 int CURL_GLOBAL_DEFAULT ;
 int WAITMS (int) ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_setopt (int *,int ,char*) ;
 int curl_global_cleanup () ;
 int curl_global_init (int ) ;
 int curl_multi_add_handle (int *,int *) ;
 int curl_multi_cleanup (int *) ;
 int * curl_multi_init () ;
 int curl_multi_perform (int *,int*) ;
 int curl_multi_remove_handle (int *,int *) ;
 scalar_t__ curl_multi_wait (int *,int *,int ,int,int*) ;
 int fprintf (int ,char*,scalar_t__) ;
 int stderr ;

int main(void)
{
  CURL *http_handle;
  CURLM *multi_handle;

  int still_running = 0;
  int repeats = 0;

  curl_global_init(CURL_GLOBAL_DEFAULT);

  http_handle = curl_easy_init();


  curl_easy_setopt(http_handle, CURLOPT_URL, "https://www.example.com/");


  multi_handle = curl_multi_init();


  curl_multi_add_handle(multi_handle, http_handle);


  curl_multi_perform(multi_handle, &still_running);

  while(still_running) {
    CURLMcode mc;
    int numfds;


    mc = curl_multi_wait(multi_handle, ((void*)0), 0, 1000, &numfds);

    if(mc != CURLM_OK) {
      fprintf(stderr, "curl_multi_wait() failed, code %d.\n", mc);
      break;
    }






    if(!numfds) {
      repeats++;
      if(repeats > 1) {
        WAITMS(100);
      }
    }
    else
      repeats = 0;

    curl_multi_perform(multi_handle, &still_running);
  }

  curl_multi_remove_handle(multi_handle, http_handle);

  curl_easy_cleanup(http_handle);

  curl_multi_cleanup(multi_handle);

  curl_global_cleanup();

  return 0;
}
