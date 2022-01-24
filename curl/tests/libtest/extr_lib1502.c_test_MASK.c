#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef  char curl_slist ;
typedef  int /*<<< orphan*/  redirect ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  CURLOPT_HEADER ; 
 int /*<<< orphan*/  CURLOPT_RESOLVE ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  libtest_arg2 ; 
 int /*<<< orphan*/  libtest_arg3 ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  stderr ; 

int FUNC20(char *URL)
{
  CURL *easy = NULL;
  CURL *dup;
  CURLM *multi = NULL;
  int still_running;
  int res = 0;

  char redirect[160];

  /* DNS cache injection */
  struct curl_slist *dns_cache_list;

  FUNC12(redirect, sizeof(redirect), "google.com:%s:%s", libtest_arg2,
            libtest_arg3);

  FUNC19();

  dns_cache_list = FUNC7(NULL, redirect);
  if(!dns_cache_list) {
    FUNC11(stderr, "curl_slist_append() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  FUNC17(CURL_GLOBAL_ALL);
  if(res) {
    FUNC8(dns_cache_list);
    return res;
  }

  FUNC9(easy);

  FUNC10(easy, CURLOPT_URL, URL);
  FUNC10(easy, CURLOPT_HEADER, 1L);
  FUNC10(easy, CURLOPT_RESOLVE, dns_cache_list);

  dup = FUNC3(easy);
  if(dup) {
    FUNC2(easy);
    easy = dup;
  }
  else {
    FUNC8(dns_cache_list);
    FUNC2(easy);
    return CURLE_OUT_OF_MEMORY;
  }

  FUNC15(multi);

  FUNC13(multi, easy);

  FUNC16(multi, &still_running);

  FUNC1();

  while(still_running) {
    struct timeval timeout;
    fd_set fdread;
    fd_set fdwrite;
    fd_set fdexcep;
    int maxfd = -99;

    FUNC0(&fdread);
    FUNC0(&fdwrite);
    FUNC0(&fdexcep);
    timeout.tv_sec = 1;
    timeout.tv_usec = 0;

    FUNC14(multi, &fdread, &fdwrite, &fdexcep, &maxfd);

    /* At this point, maxfd is guaranteed to be greater or equal than -1. */

    FUNC18(maxfd + 1, &fdread, &fdwrite, &fdexcep, &timeout);

    FUNC1();

    FUNC16(multi, &still_running);

    FUNC1();
  }

test_cleanup:

#ifdef LIB1502
  /* undocumented cleanup sequence - type UA */
  curl_multi_cleanup(multi);
  curl_easy_cleanup(easy);
  curl_global_cleanup();
#endif

#ifdef LIB1503
  /* proper cleanup sequence - type PA */
  curl_multi_remove_handle(multi, easy);
  curl_multi_cleanup(multi);
  curl_easy_cleanup(easy);
  curl_global_cleanup();
#endif

#ifdef LIB1504
  /* undocumented cleanup sequence - type UB */
  curl_easy_cleanup(easy);
  curl_multi_cleanup(multi);
  curl_global_cleanup();
#endif

#ifdef LIB1505
  /* proper cleanup sequence - type PB */
  curl_multi_remove_handle(multi, easy);
  curl_easy_cleanup(easy);
  curl_multi_cleanup(multi);
  curl_global_cleanup();
#endif

  FUNC8(dns_cache_list);

  return res;
}