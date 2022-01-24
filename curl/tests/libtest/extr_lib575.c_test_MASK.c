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
 int /*<<< orphan*/  CURLOPT_WILDCARDMATCH ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC15 () ; 

int FUNC16(char *URL)
{
  CURL *handle = NULL;
  CURL *duphandle = NULL;
  CURLM *mhandle = NULL;
  int res = 0;
  int still_running = 0;

  FUNC15();

  FUNC9(CURL_GLOBAL_ALL);

  FUNC7(handle);

  FUNC8(handle, CURLOPT_URL, URL);
  FUNC8(handle, CURLOPT_WILDCARDMATCH, 1L);
  FUNC8(handle, CURLOPT_VERBOSE, 1L);

  res = FUNC4(handle);
  if(res)
    goto test_cleanup;

  res = FUNC4(handle);
  if(res)
    goto test_cleanup;

  duphandle = FUNC3(handle);
  if(!duphandle)
    goto test_cleanup;
  FUNC2(handle);
  handle = duphandle;

  FUNC12(mhandle);

  FUNC10(mhandle, handle);

  FUNC13(mhandle, &still_running);

  FUNC1();

  while(still_running) {
    struct timeval timeout;
    fd_set fdread;
    fd_set fdwrite;
    fd_set fdexcep;
    int maxfd = -99;

    timeout.tv_sec = 0;
    timeout.tv_usec = 100000L; /* 100 ms */

    FUNC0(&fdread);
    FUNC0(&fdwrite);
    FUNC0(&fdexcep);

    FUNC11(mhandle, &fdread, &fdwrite, &fdexcep, &maxfd);

    /* At this point, maxfd is guaranteed to be greater or equal than -1. */

    FUNC14(maxfd + 1, &fdread, &fdwrite, &fdexcep, &timeout);

    FUNC1();

    FUNC13(mhandle, &still_running);

    FUNC1();
  }

test_cleanup:

  /* undocumented cleanup sequence - type UA */

  FUNC6(mhandle);
  FUNC2(handle);
  FUNC5();

  return res;
}