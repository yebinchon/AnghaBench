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
typedef  int /*<<< orphan*/  CURLMsg ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_PROXY ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int TEST_ERR_FAILURE ; 
 int TEST_ERR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 long libtest_arg2 ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  stderr ; 

int FUNC17(char *URL)
{
  CURL *c = NULL;
  int res = 0;
  CURLM *m = NULL;
  fd_set rd, wr, exc;
  int running;

  FUNC16();

  FUNC10(CURL_GLOBAL_ALL);

  FUNC7(c);

  /* The point here is that there must not be anything running on the given
     proxy port */
  if(libtest_arg2)
    FUNC8(c, CURLOPT_PROXY, libtest_arg2);
  FUNC8(c, CURLOPT_URL, URL);
  FUNC8(c, CURLOPT_VERBOSE, 1L);

  FUNC13(m);

  FUNC11(m, c);

  for(;;) {
    struct timeval interval;
    int maxfd = -99;

    interval.tv_sec = 1;
    interval.tv_usec = 0;

    FUNC9(stderr, "curl_multi_perform()\n");

    FUNC14(m, &running);

    FUNC1();

    if(!running) {
      /* This is where this code is expected to reach */
      int numleft;
      CURLMsg *msg = FUNC5(m, &numleft);
      FUNC9(stderr, "Expected: not running\n");
      if(msg && !numleft)
        res = TEST_ERR_SUCCESS; /* this is where we should be */
      else
        res = TEST_ERR_FAILURE; /* not correct */
      break; /* done */
    }
    FUNC9(stderr, "running == %d\n", running);

    FUNC0(&rd);
    FUNC0(&wr);
    FUNC0(&exc);

    FUNC9(stderr, "curl_multi_fdset()\n");

    FUNC12(m, &rd, &wr, &exc, &maxfd);

    /* At this point, maxfd is guaranteed to be greater or equal than -1. */

    FUNC15(maxfd + 1, &rd, &wr, &exc, &interval);

    FUNC1();
  }

test_cleanup:

  /* proper cleanup sequence - type PA */

  FUNC6(m, c);
  FUNC4(m);
  FUNC2(c);
  FUNC3();

  return res;
}