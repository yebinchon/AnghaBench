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
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_HEADER ; 
 int /*<<< orphan*/  CURLOPT_SSL_VERIFYHOST ; 
 int /*<<< orphan*/  CURLOPT_SSL_VERIFYPEER ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC12 () ; 

int FUNC13(char *URL)
{
  CURL *http_handle = NULL;
  CURLM *multi_handle = NULL;
  int res = 0;

  int still_running; /* keep number of running handles */

  FUNC12();

  /*
  ** curl_global_init called indirectly from curl_easy_init.
  */

  FUNC5(http_handle);

  /* set options */
  FUNC6(http_handle, CURLOPT_URL, URL);
  FUNC6(http_handle, CURLOPT_HEADER, 1L);
  FUNC6(http_handle, CURLOPT_SSL_VERIFYPEER, 0L);
  FUNC6(http_handle, CURLOPT_SSL_VERIFYHOST, 0L);

  /* init a multi stack */
  FUNC9(multi_handle);

  /* add the individual transfers */
  FUNC7(multi_handle, http_handle);

  /* we start some action by calling perform right away */
  FUNC10(multi_handle, &still_running);

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

    /* set a suitable timeout to play around with */
    timeout.tv_sec = 1;
    timeout.tv_usec = 0;

    /* get file descriptors from the transfers */
    FUNC8(multi_handle, &fdread, &fdwrite, &fdexcep, &maxfd);

    /* At this point, maxfd is guaranteed to be greater or equal than -1. */

    FUNC11(maxfd + 1, &fdread, &fdwrite, &fdexcep, &timeout);

    FUNC1();

    /* timeout or readable/writable sockets */
    FUNC10(multi_handle, &still_running);

    FUNC1();
  }

test_cleanup:

  /* undocumented cleanup sequence - type UA */

  FUNC4(multi_handle);
  FUNC2(http_handle);
  FUNC3();

  return res;
}