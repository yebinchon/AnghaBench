
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int fd_set ;
typedef int CURLMsg ;
typedef int CURLM ;
typedef int CURL ;


 int CURLOPT_PROXY ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURL_GLOBAL_ALL ;
 int FD_ZERO (int *) ;
 int TEST_ERR_FAILURE ;
 int TEST_ERR_SUCCESS ;
 int abort_on_test_timeout () ;
 int curl_easy_cleanup (int *) ;
 int curl_global_cleanup () ;
 int curl_multi_cleanup (int *) ;
 int * curl_multi_info_read (int *,int*) ;
 int curl_multi_remove_handle (int *,int *) ;
 int easy_init (int *) ;
 int easy_setopt (int *,int ,...) ;
 int fprintf (int ,char*,...) ;
 int global_init (int ) ;
 long libtest_arg2 ;
 int multi_add_handle (int *,int *) ;
 int multi_fdset (int *,int *,int *,int *,int*) ;
 int multi_init (int *) ;
 int multi_perform (int *,int*) ;
 int select_test (int,int *,int *,int *,struct timeval*) ;
 int start_test_timing () ;
 int stderr ;

int test(char *URL)
{
  CURL *c = ((void*)0);
  int res = 0;
  CURLM *m = ((void*)0);
  fd_set rd, wr, exc;
  int running;

  start_test_timing();

  global_init(CURL_GLOBAL_ALL);

  easy_init(c);



  if(libtest_arg2)
    easy_setopt(c, CURLOPT_PROXY, libtest_arg2);
  easy_setopt(c, CURLOPT_URL, URL);
  easy_setopt(c, CURLOPT_VERBOSE, 1L);

  multi_init(m);

  multi_add_handle(m, c);

  for(;;) {
    struct timeval interval;
    int maxfd = -99;

    interval.tv_sec = 1;
    interval.tv_usec = 0;

    fprintf(stderr, "curl_multi_perform()\n");

    multi_perform(m, &running);

    abort_on_test_timeout();

    if(!running) {

      int numleft;
      CURLMsg *msg = curl_multi_info_read(m, &numleft);
      fprintf(stderr, "Expected: not running\n");
      if(msg && !numleft)
        res = TEST_ERR_SUCCESS;
      else
        res = TEST_ERR_FAILURE;
      break;
    }
    fprintf(stderr, "running == %d\n", running);

    FD_ZERO(&rd);
    FD_ZERO(&wr);
    FD_ZERO(&exc);

    fprintf(stderr, "curl_multi_fdset()\n");

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
