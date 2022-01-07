
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_usec; scalar_t__ tv_sec; } ;
typedef int fd_set ;
typedef int CURLM ;
typedef int CURL ;


 int CURLAUTH_BASIC ;
 int CURLAUTH_DIGEST ;
 int CURLAUTH_NTLM ;
 int CURLOPT_HEADER ;
 int CURLOPT_IOCTLDATA ;
 int CURLOPT_IOCTLFUNCTION ;
 int CURLOPT_POST ;
 int CURLOPT_POSTFIELDSIZE ;
 int CURLOPT_PROXY ;
 int CURLOPT_PROXYAUTH ;
 int CURLOPT_PROXYUSERPWD ;
 int CURLOPT_READDATA ;
 int CURLOPT_READFUNCTION ;
 int CURLOPT_URL ;
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
 long ioctlcallback ;
 long libtest_arg2 ;
 long libtest_arg3 ;
 int multi_add_handle (int *,int *) ;
 int multi_fdset (int *,int *,int *,int *,int*) ;
 int multi_init (int *) ;
 int multi_perform (int *,int*) ;
 long readcallback ;
 int select_test (int,int *,int *,int *,struct timeval*) ;
 int sleep (int) ;
 int start_test_timing () ;
 scalar_t__ strlen (int ) ;
 int uploadthis ;

int test(char *URL)
{
  int res = 0;
  CURL *curl = ((void*)0);
  int counter = 0;
  CURLM *m = ((void*)0);
  int running = 1;

  start_test_timing();

  global_init(CURL_GLOBAL_ALL);

  easy_init(curl);

  easy_setopt(curl, CURLOPT_URL, URL);
  easy_setopt(curl, CURLOPT_VERBOSE, 1L);
  easy_setopt(curl, CURLOPT_HEADER, 1L);


  easy_setopt(curl, CURLOPT_IOCTLFUNCTION, ioctlcallback);
  easy_setopt(curl, CURLOPT_IOCTLDATA, &counter);
  easy_setopt(curl, CURLOPT_READFUNCTION, readcallback);
  easy_setopt(curl, CURLOPT_READDATA, &counter);


  easy_setopt(curl, CURLOPT_POSTFIELDSIZE, (long)strlen(uploadthis));

  easy_setopt(curl, CURLOPT_POST, 1L);
  easy_setopt(curl, CURLOPT_PROXY, libtest_arg2);
  easy_setopt(curl, CURLOPT_PROXYUSERPWD, libtest_arg3);
  easy_setopt(curl, CURLOPT_PROXYAUTH,
                   (long) (CURLAUTH_NTLM | CURLAUTH_DIGEST | CURLAUTH_BASIC) );

  multi_init(m);

  multi_add_handle(m, curl);

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

test_cleanup:



  curl_multi_remove_handle(m, curl);
  curl_multi_cleanup(m);
  curl_easy_cleanup(curl);
  curl_global_cleanup();

  return res;
}
