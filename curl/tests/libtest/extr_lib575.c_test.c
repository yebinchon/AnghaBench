
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_usec; scalar_t__ tv_sec; } ;
typedef int fd_set ;
typedef int CURLM ;
typedef int CURL ;


 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURLOPT_WILDCARDMATCH ;
 int CURL_GLOBAL_ALL ;
 int FD_ZERO (int *) ;
 int abort_on_test_timeout () ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_duphandle (int *) ;
 int curl_easy_perform (int *) ;
 int curl_global_cleanup () ;
 int curl_multi_cleanup (int *) ;
 int easy_init (int *) ;
 int easy_setopt (int *,int ,...) ;
 int global_init (int ) ;
 int multi_add_handle (int *,int *) ;
 int multi_fdset (int *,int *,int *,int *,int*) ;
 int multi_init (int *) ;
 int multi_perform (int *,int*) ;
 int select_test (int,int *,int *,int *,struct timeval*) ;
 int start_test_timing () ;

int test(char *URL)
{
  CURL *handle = ((void*)0);
  CURL *duphandle = ((void*)0);
  CURLM *mhandle = ((void*)0);
  int res = 0;
  int still_running = 0;

  start_test_timing();

  global_init(CURL_GLOBAL_ALL);

  easy_init(handle);

  easy_setopt(handle, CURLOPT_URL, URL);
  easy_setopt(handle, CURLOPT_WILDCARDMATCH, 1L);
  easy_setopt(handle, CURLOPT_VERBOSE, 1L);

  res = curl_easy_perform(handle);
  if(res)
    goto test_cleanup;

  res = curl_easy_perform(handle);
  if(res)
    goto test_cleanup;

  duphandle = curl_easy_duphandle(handle);
  if(!duphandle)
    goto test_cleanup;
  curl_easy_cleanup(handle);
  handle = duphandle;

  multi_init(mhandle);

  multi_add_handle(mhandle, handle);

  multi_perform(mhandle, &still_running);

  abort_on_test_timeout();

  while(still_running) {
    struct timeval timeout;
    fd_set fdread;
    fd_set fdwrite;
    fd_set fdexcep;
    int maxfd = -99;

    timeout.tv_sec = 0;
    timeout.tv_usec = 100000L;

    FD_ZERO(&fdread);
    FD_ZERO(&fdwrite);
    FD_ZERO(&fdexcep);

    multi_fdset(mhandle, &fdread, &fdwrite, &fdexcep, &maxfd);



    select_test(maxfd + 1, &fdread, &fdwrite, &fdexcep, &timeout);

    abort_on_test_timeout();

    multi_perform(mhandle, &still_running);

    abort_on_test_timeout();
  }

test_cleanup:



  curl_multi_cleanup(mhandle);
  curl_easy_cleanup(handle);
  curl_global_cleanup();

  return res;
}
