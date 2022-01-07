
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int fd_set ;
typedef int CURLM ;
typedef int CURL ;


 int CURLOPT_HEADER ;
 int CURLOPT_SSL_VERIFYHOST ;
 int CURLOPT_SSL_VERIFYPEER ;
 int CURLOPT_URL ;
 int FD_ZERO (int *) ;
 int abort_on_test_timeout () ;
 int curl_easy_cleanup (int *) ;
 int curl_global_cleanup () ;
 int curl_multi_cleanup (int *) ;
 int easy_init (int *) ;
 int easy_setopt (int *,int ,...) ;
 int multi_add_handle (int *,int *) ;
 int multi_fdset (int *,int *,int *,int *,int*) ;
 int multi_init (int *) ;
 int multi_perform (int *,int*) ;
 int select_test (int,int *,int *,int *,struct timeval*) ;
 int start_test_timing () ;

int test(char *URL)
{
  CURL *http_handle = ((void*)0);
  CURLM *multi_handle = ((void*)0);
  int res = 0;

  int still_running;

  start_test_timing();





  easy_init(http_handle);


  easy_setopt(http_handle, CURLOPT_URL, URL);
  easy_setopt(http_handle, CURLOPT_HEADER, 1L);
  easy_setopt(http_handle, CURLOPT_SSL_VERIFYPEER, 0L);
  easy_setopt(http_handle, CURLOPT_SSL_VERIFYHOST, 0L);


  multi_init(multi_handle);


  multi_add_handle(multi_handle, http_handle);


  multi_perform(multi_handle, &still_running);

  abort_on_test_timeout();

  while(still_running) {
    struct timeval timeout;

    fd_set fdread;
    fd_set fdwrite;
    fd_set fdexcep;
    int maxfd = -99;

    FD_ZERO(&fdread);
    FD_ZERO(&fdwrite);
    FD_ZERO(&fdexcep);


    timeout.tv_sec = 1;
    timeout.tv_usec = 0;


    multi_fdset(multi_handle, &fdread, &fdwrite, &fdexcep, &maxfd);



    select_test(maxfd + 1, &fdread, &fdwrite, &fdexcep, &timeout);

    abort_on_test_timeout();


    multi_perform(multi_handle, &still_running);

    abort_on_test_timeout();
  }

test_cleanup:



  curl_multi_cleanup(multi_handle);
  curl_easy_cleanup(http_handle);
  curl_global_cleanup();

  return res;
}
