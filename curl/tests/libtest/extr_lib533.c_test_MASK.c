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
 int /*<<< orphan*/  CURLOPT_FAILONERROR ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
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
  int res = 0;
  CURL *curl = NULL;
  int running;
  CURLM *m = NULL;
  int current = 0;

  FUNC16();

  FUNC10(CURL_GLOBAL_ALL);

  FUNC7(curl);

  FUNC8(curl, CURLOPT_URL, URL);
  FUNC8(curl, CURLOPT_VERBOSE, 1L);
  FUNC8(curl, CURLOPT_FAILONERROR, 1L);

  FUNC13(m);

  FUNC11(m, curl);

  FUNC9(stderr, "Start at URL 0\n");

  for(;;) {
    struct timeval interval;
    fd_set rd, wr, exc;
    int maxfd = -99;

    interval.tv_sec = 1;
    interval.tv_usec = 0;

    FUNC14(m, &running);

    FUNC1();

    if(!running) {
      if(!current++) {
        FUNC9(stderr, "Advancing to URL 1\n");
        /* remove the handle we use */
        FUNC6(m, curl);

        /* make us re-use the same handle all the time, and try resetting
           the handle first too */
        FUNC3(curl);
        FUNC8(curl, CURLOPT_URL, libtest_arg2);
        FUNC8(curl, CURLOPT_VERBOSE, 1L);
        FUNC8(curl, CURLOPT_FAILONERROR, 1L);

        /* re-add it */
        FUNC11(m, curl);
      }
      else
        break; /* done */
    }

    FUNC0(&rd);
    FUNC0(&wr);
    FUNC0(&exc);

    FUNC12(m, &rd, &wr, &exc, &maxfd);

    /* At this point, maxfd is guaranteed to be greater or equal than -1. */

    FUNC15(maxfd + 1, &rd, &wr, &exc, &interval);

    FUNC1();
  }

test_cleanup:

  /* undocumented cleanup sequence - type UB */

  FUNC2(curl);
  FUNC5(m);
  FUNC4();

  return res;
}