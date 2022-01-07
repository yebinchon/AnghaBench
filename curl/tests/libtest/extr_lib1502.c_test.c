
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef char curl_slist ;
typedef int redirect ;
typedef int fd_set ;
typedef int CURLM ;
typedef int CURL ;


 int CURLE_OUT_OF_MEMORY ;
 int CURLOPT_HEADER ;
 int CURLOPT_RESOLVE ;
 int CURLOPT_URL ;
 int CURL_GLOBAL_ALL ;
 int FD_ZERO (int *) ;
 int TEST_ERR_MAJOR_BAD ;
 int abort_on_test_timeout () ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_duphandle (int *) ;
 int curl_global_cleanup () ;
 int curl_multi_cleanup (int *) ;
 int curl_multi_remove_handle (int *,int *) ;
 char* curl_slist_append (int *,char*) ;
 int curl_slist_free_all (char*) ;
 int easy_init (int *) ;
 int easy_setopt (int *,int ,...) ;
 int fprintf (int ,char*) ;
 int libtest_arg2 ;
 int libtest_arg3 ;
 int msnprintf (char*,int,char*,int ,int ) ;
 int multi_add_handle (int *,int *) ;
 int multi_fdset (int *,int *,int *,int *,int*) ;
 int multi_init (int *) ;
 int multi_perform (int *,int*) ;
 int res_global_init (int ) ;
 int select_test (int,int *,int *,int *,struct timeval*) ;
 int start_test_timing () ;
 int stderr ;

int test(char *URL)
{
  CURL *easy = ((void*)0);
  CURL *dup;
  CURLM *multi = ((void*)0);
  int still_running;
  int res = 0;

  char redirect[160];


  struct curl_slist *dns_cache_list;

  msnprintf(redirect, sizeof(redirect), "google.com:%s:%s", libtest_arg2,
            libtest_arg3);

  start_test_timing();

  dns_cache_list = curl_slist_append(((void*)0), redirect);
  if(!dns_cache_list) {
    fprintf(stderr, "curl_slist_append() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  res_global_init(CURL_GLOBAL_ALL);
  if(res) {
    curl_slist_free_all(dns_cache_list);
    return res;
  }

  easy_init(easy);

  easy_setopt(easy, CURLOPT_URL, URL);
  easy_setopt(easy, CURLOPT_HEADER, 1L);
  easy_setopt(easy, CURLOPT_RESOLVE, dns_cache_list);

  dup = curl_easy_duphandle(easy);
  if(dup) {
    curl_easy_cleanup(easy);
    easy = dup;
  }
  else {
    curl_slist_free_all(dns_cache_list);
    curl_easy_cleanup(easy);
    return CURLE_OUT_OF_MEMORY;
  }

  multi_init(multi);

  multi_add_handle(multi, easy);

  multi_perform(multi, &still_running);

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

    multi_fdset(multi, &fdread, &fdwrite, &fdexcep, &maxfd);



    select_test(maxfd + 1, &fdread, &fdwrite, &fdexcep, &timeout);

    abort_on_test_timeout();

    multi_perform(multi, &still_running);

    abort_on_test_timeout();
  }

test_cleanup:
  curl_slist_free_all(dns_cache_list);

  return res;
}
