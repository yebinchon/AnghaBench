
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; long tv_usec; int member_1; int member_0; } ;
typedef int fd_set ;
typedef scalar_t__ CURLMcode ;
typedef int CURLM ;
typedef int CURL ;


 scalar_t__ CURLM_OK ;
 int CURLOPT_DEBUGFUNCTION ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int FD_ZERO (int *) ;
 int Sleep (int) ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_setopt (int *,int ,...) ;
 int curl_multi_add_handle (int *,int *) ;
 int curl_multi_cleanup (int *) ;
 scalar_t__ curl_multi_fdset (int *,int *,int *,int *,int*) ;
 int * curl_multi_init () ;
 int curl_multi_perform (int *,int*) ;
 int curl_multi_timeout (int *,long*) ;
 int fprintf (int ,char*,scalar_t__) ;
 long my_trace ;
 int printf (char*) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int stderr ;

int main(void)
{
  CURL *http_handle;
  CURLM *multi_handle;

  int still_running = 0;

  http_handle = curl_easy_init();


  curl_easy_setopt(http_handle, CURLOPT_URL, "https://www.example.com/");

  curl_easy_setopt(http_handle, CURLOPT_DEBUGFUNCTION, my_trace);
  curl_easy_setopt(http_handle, CURLOPT_VERBOSE, 1L);


  multi_handle = curl_multi_init();


  curl_multi_add_handle(multi_handle, http_handle);


  curl_multi_perform(multi_handle, &still_running);

  while(still_running) {
    struct timeval timeout;
    int rc;
    CURLMcode mc;

    fd_set fdread;
    fd_set fdwrite;
    fd_set fdexcep;
    int maxfd = -1;

    long curl_timeo = -1;

    FD_ZERO(&fdread);
    FD_ZERO(&fdwrite);
    FD_ZERO(&fdexcep);


    timeout.tv_sec = 1;
    timeout.tv_usec = 0;

    curl_multi_timeout(multi_handle, &curl_timeo);
    if(curl_timeo >= 0) {
      timeout.tv_sec = curl_timeo / 1000;
      if(timeout.tv_sec > 1)
        timeout.tv_sec = 1;
      else
        timeout.tv_usec = (curl_timeo % 1000) * 1000;
    }


    mc = curl_multi_fdset(multi_handle, &fdread, &fdwrite, &fdexcep, &maxfd);

    if(mc != CURLM_OK) {
      fprintf(stderr, "curl_multi_fdset() failed, code %d.\n", mc);
      break;
    }







    if(maxfd == -1) {





      struct timeval wait = { 0, 100 * 1000 };
      rc = select(0, ((void*)0), ((void*)0), ((void*)0), &wait);

    }
    else {


      rc = select(maxfd + 1, &fdread, &fdwrite, &fdexcep, &timeout);
    }

    switch(rc) {
    case -1:

      still_running = 0;
      printf("select() returns error, this is badness\n");
      break;
    case 0:
    default:

      curl_multi_perform(multi_handle, &still_running);
      break;
    }
  }

  curl_multi_cleanup(multi_handle);

  curl_easy_cleanup(http_handle);

  return 0;
}
