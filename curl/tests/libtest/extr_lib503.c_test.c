
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int fd_set ;
typedef int CURLM ;
typedef int CURL ;


 int CURLOPT_HEADER ;
 int CURLOPT_HTTPPROXYTUNNEL ;
 int CURLOPT_PROXY ;
 int CURLOPT_PROXYUSERPWD ;
 int CURLOPT_URL ;
 int CURLOPT_USERPWD ;
 int CURLOPT_VERBOSE ;
 int CURL_GLOBAL_ALL ;
 int FD_ZERO (int *) ;
 int abort_on_test_timeout () ;
 int curl_easy_cleanup (int *) ;
 int curl_global_cleanup () ;
 int curl_multi_cleanup (int *) ;
 int curl_multi_remove_handle (int *,int *) ;
 int easy_init (int *) ;
 int easy_setopt (int *,int ,...) ;
 int global_init (int ) ;
 long libtest_arg2 ;
 int multi_add_handle (int *,int *) ;
 int multi_fdset (int *,int *,int *,int *,int*) ;
 int multi_init (int *) ;
 int multi_perform (int *,int*) ;
 int select_test (int,int *,int *,int *,struct timeval*) ;
 int start_test_timing () ;

int test(char *URL)
{
  CURL *c = ((void*)0);
  CURLM *m = ((void*)0);
  int res = 0;
  int running;

  start_test_timing();

  global_init(CURL_GLOBAL_ALL);

  easy_init(c);

  easy_setopt(c, CURLOPT_PROXY, libtest_arg2);
  easy_setopt(c, CURLOPT_URL, URL);
  easy_setopt(c, CURLOPT_USERPWD, "test:ing");
  easy_setopt(c, CURLOPT_PROXYUSERPWD, "test:ing");
  easy_setopt(c, CURLOPT_HTTPPROXYTUNNEL, 1L);
  easy_setopt(c, CURLOPT_HEADER, 1L);
  easy_setopt(c, CURLOPT_VERBOSE, 1L);

  multi_init(m);

  multi_add_handle(m, c);

  for(;;) {
    struct timeval interval;
    fd_set rd, wr, exc;
    int maxfd = -99;

    interval.tv_sec = 1;
    interval.tv_usec = 0;

    multi_perform(m, &running);

    abort_on_test_timeout();

    if(!running)
      break;

    FD_ZERO(&rd);
    FD_ZERO(&wr);
    FD_ZERO(&exc);

    multi_fdset(m, &rd, &wr, &exc, &maxfd);



    select_test(maxfd + 1, &rd, &wr, &exc, &interval);

    abort_on_test_timeout();
  }

test_cleanup:



  curl_multi_remove_handle(m, c);
  curl_multi_cleanup(m);
  curl_easy_cleanup(c);
  curl_global_cleanup();

  return res;
}
