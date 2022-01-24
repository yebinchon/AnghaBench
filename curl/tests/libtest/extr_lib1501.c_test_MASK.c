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
struct timeval {long tv_usec; scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 long MAX_BLOCKED_TIME_MS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  stderr ; 
 long FUNC15 (struct timeval,struct timeval) ; 
 struct timeval FUNC16 () ; 

int FUNC17(char *URL)
{
  CURL *handle = NULL;
  CURLM *mhandle = NULL;
  int res = 0;
  int still_running = 0;

  FUNC14();

  FUNC8(CURL_GLOBAL_ALL);

  FUNC5(handle);

  FUNC6(handle, CURLOPT_URL, URL);
  FUNC6(handle, CURLOPT_VERBOSE, 1L);

  FUNC11(mhandle);

  FUNC9(mhandle, handle);

  FUNC12(mhandle, &still_running);

  FUNC1();

  while(still_running) {
    struct timeval timeout;
    fd_set fdread;
    fd_set fdwrite;
    fd_set fdexcep;
    int maxfd = -99;
    struct timeval before;
    struct timeval after;
    long e;

    timeout.tv_sec = 0;
    timeout.tv_usec = 100000L; /* 100 ms */

    FUNC0(&fdread);
    FUNC0(&fdwrite);
    FUNC0(&fdexcep);

    FUNC10(mhandle, &fdread, &fdwrite, &fdexcep, &maxfd);

    /* At this point, maxfd is guaranteed to be greater or equal than -1. */

    FUNC13(maxfd + 1, &fdread, &fdwrite, &fdexcep, &timeout);

    FUNC1();

    FUNC7(stderr, "ping\n");
    before = FUNC16();

    FUNC12(mhandle, &still_running);

    FUNC1();

    after = FUNC16();
    e = FUNC15(after, before);
    FUNC7(stderr, "pong = %ld\n", e);

    if(e > MAX_BLOCKED_TIME_MS) {
      res = 100;
      break;
    }
  }

test_cleanup:

  /* undocumented cleanup sequence - type UA */

  FUNC4(mhandle);
  FUNC2(handle);
  FUNC3();

  return res;
}