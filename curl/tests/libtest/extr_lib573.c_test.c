
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {long tv_usec; scalar_t__ tv_sec; } ;
typedef int fd_set ;
struct TYPE_2__ {int nohex; int tracetime; } ;
typedef int CURLM ;
typedef int CURL ;


 int CURLINFO_CONNECT_TIME ;
 int CURLOPT_DEBUGDATA ;
 int CURLOPT_DEBUGFUNCTION ;
 int CURLOPT_HEADER ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURL_GLOBAL_ALL ;
 int FD_ZERO (int *) ;
 int TEST_ERR_MAJOR_BAD ;
 int abort_on_test_timeout () ;
 int curl_easy_cleanup (int *) ;
 int curl_easy_getinfo (int *,int ,double*) ;
 int curl_global_cleanup () ;
 int curl_multi_cleanup (int *) ;
 int curl_multi_remove_handle (int *,int *) ;
 int easy_init (int *) ;
 int easy_setopt (int *,int ,...) ;
 int fprintf (int ,char*,double,double) ;
 int global_init (int ) ;
 long libtest_debug_cb ;
 TYPE_1__ libtest_debug_config ;
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
  CURLM *m = ((void*)0);
  int res = 0;
  int running = 1;
  double connect_time = 0.0;
  double dbl_epsilon;

  dbl_epsilon = 1.0;
  do {
    dbl_epsilon /= 2.0;
  } while((double)(1.0 + (dbl_epsilon/2.0)) > (double)1.0);

  start_test_timing();

  global_init(CURL_GLOBAL_ALL);

  easy_init(c);

  easy_setopt(c, CURLOPT_HEADER, 1L);
  easy_setopt(c, CURLOPT_URL, URL);

  libtest_debug_config.nohex = 1;
  libtest_debug_config.tracetime = 1;
  easy_setopt(c, CURLOPT_DEBUGDATA, &libtest_debug_config);
  easy_setopt(c, CURLOPT_DEBUGFUNCTION, libtest_debug_cb);
  easy_setopt(c, CURLOPT_VERBOSE, 1L);

  multi_init(m);

  multi_add_handle(m, c);

  while(running) {
    struct timeval timeout;
    fd_set fdread, fdwrite, fdexcep;
    int maxfd = -99;

    timeout.tv_sec = 0;
    timeout.tv_usec = 100000L;

    multi_perform(m, &running);

    abort_on_test_timeout();

    if(!running)
      break;

    FD_ZERO(&fdread);
    FD_ZERO(&fdwrite);
    FD_ZERO(&fdexcep);

    multi_fdset(m, &fdread, &fdwrite, &fdexcep, &maxfd);



    select_test(maxfd + 1, &fdread, &fdwrite, &fdexcep, &timeout);

    abort_on_test_timeout();
  }

  curl_easy_getinfo(c, CURLINFO_CONNECT_TIME, &connect_time);
  if(connect_time < dbl_epsilon) {
    fprintf(stderr, "connect time %e is < epsilon %e\n",
            connect_time, dbl_epsilon);
    res = TEST_ERR_MAJOR_BAD;
  }

test_cleanup:



  curl_multi_remove_handle(m, c);
  curl_multi_cleanup(m);
  curl_easy_cleanup(c);
  curl_global_cleanup();

  return res;
}
