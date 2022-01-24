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
 int /*<<< orphan*/  CURLOPT_PROXY ; 
 int /*<<< orphan*/  CURLOPT_PROXYTYPE ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 scalar_t__ CURLPROXY_SOCKS4 ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 long libtest_arg2 ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  stderr ; 

int FUNC15(char *URL)
{
  int res = 0;
  CURL *curl = NULL;
  int running;
  CURLM *m = NULL;

  FUNC14();

  FUNC8(CURL_GLOBAL_ALL);

  FUNC5(curl);

  FUNC6(curl, CURLOPT_URL, URL);
  FUNC6(curl, CURLOPT_VERBOSE, 1L);
  FUNC6(curl, CURLOPT_PROXY, libtest_arg2);
  FUNC6(curl, CURLOPT_PROXYTYPE, (long)CURLPROXY_SOCKS4);

  FUNC11(m);

  FUNC9(m, curl);

  FUNC7(stderr, "Start at URL 0\n");

  for(;;) {
    struct timeval interval;
    fd_set rd, wr, exc;
    int maxfd = -99;

    interval.tv_sec = 1;
    interval.tv_usec = 0;

    FUNC12(m, &running);

    FUNC1();

    if(!running)
      break; /* done */

    FUNC0(&rd);
    FUNC0(&wr);
    FUNC0(&exc);

    FUNC10(m, &rd, &wr, &exc, &maxfd);

    /* At this point, maxfd is guaranteed to be greater or equal than -1. */

    FUNC13(maxfd + 1, &rd, &wr, &exc, &interval);

    FUNC1();
  }

test_cleanup:

  /* undocumented cleanup sequence - type UB */

  FUNC2(curl);
  FUNC4(m);
  FUNC3();

  return res;
}