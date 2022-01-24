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
typedef  int /*<<< orphan*/  target_url ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLMOPT_PIPELINING ; 
 int /*<<< orphan*/  CURLOPT_HEADER ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int NUM_HANDLES ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  stderr ; 

int FUNC18(char *URL)
{
  int res = 0;
  CURL *curl[NUM_HANDLES];
  int running;
  CURLM *m = NULL;
  int i;
  char target_url[256];
  int handles_added = 0;

  for(i = 0; i < NUM_HANDLES; i++)
    curl[i] = NULL;

  FUNC17();

  FUNC9(CURL_GLOBAL_ALL);

  FUNC13(m);

  /* get NUM_HANDLES easy handles */
  for(i = 0; i < NUM_HANDLES; i++) {
    /* get an easy handle */
    FUNC6(curl[i]);
    /* specify target */
    FUNC10(target_url, sizeof(target_url), "%s%04i", URL, i + 1);
    target_url[sizeof(target_url) - 1] = '\0';
    FUNC7(curl[i], CURLOPT_URL, target_url);
    /* go verbose */
    FUNC7(curl[i], CURLOPT_VERBOSE, 1L);
    /* include headers */
    FUNC7(curl[i], CURLOPT_HEADER, 1L);
  }

  /* Add the first handle to multi. We do this to let libcurl detect
     that the server can do pipelining. The rest of the handles will be
     added later. */
  FUNC11(m, curl[handles_added++]);

  FUNC15(m, CURLMOPT_PIPELINING, 1L);

  FUNC8(stderr, "Start at URL 0\n");

  for(;;) {
    struct timeval interval;
    fd_set rd, wr, exc;
    int maxfd = -99;

    interval.tv_sec = 1;
    interval.tv_usec = 0;

    FUNC14(m, &running);

    FUNC1();

    if(!running) {
      if(handles_added >= NUM_HANDLES)
        break; /* done */

      /* Add the rest of the handles now that the first handle has completed
         its request. */
      while(handles_added < NUM_HANDLES)
        FUNC11(m, curl[handles_added++]);
    }

    FUNC0(&rd);
    FUNC0(&wr);
    FUNC0(&exc);

    FUNC12(m, &rd, &wr, &exc, &maxfd);

    /* At this point, maxfd is guaranteed to be greater or equal than -1. */

    FUNC16(maxfd + 1, &rd, &wr, &exc, &interval);

    FUNC1();
  }

test_cleanup:

  /* proper cleanup sequence - type PB */

  for(i = 0; i < NUM_HANDLES; i++) {
    FUNC5(m, curl[i]);
    FUNC2(curl[i]);
  }

  FUNC4(m);
  FUNC3();

  return res;
}