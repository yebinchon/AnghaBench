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
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int NUM_HANDLES ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
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
  CURL *curl[NUM_HANDLES];
  int running;
  CURLM *m = NULL;
  int current = 0;
  int i;

  for(i = 0; i < NUM_HANDLES; i++)
    curl[i] = NULL;

  FUNC16();

  FUNC10(CURL_GLOBAL_ALL);

  /* get NUM_HANDLES easy handles */
  for(i = 0; i < NUM_HANDLES; i++) {
    FUNC7(curl[i]);
    /* specify target */
    FUNC8(curl[i], CURLOPT_URL, URL);
    /* go verbose */
    FUNC8(curl[i], CURLOPT_VERBOSE, 1L);
  }

  FUNC13(m);

  FUNC11(m, curl[current]);

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
#ifdef LIB527
      /* NOTE: this code does not remove the handle from the multi handle
         here, which would be the nice, sane and documented way of working.
         This however tests that the API survives this abuse gracefully. */
      curl_easy_cleanup(curl[current]);
      curl[current] = NULL;
#endif
      if(++current < NUM_HANDLES) {
        FUNC9(stderr, "Advancing to URL %d\n", current);
#ifdef LIB532
        /* first remove the only handle we use */
        curl_multi_remove_handle(m, curl[0]);

        /* make us re-use the same handle all the time, and try resetting
           the handle first too */
        curl_easy_reset(curl[0]);
        easy_setopt(curl[0], CURLOPT_URL, URL);
        /* go verbose */
        easy_setopt(curl[0], CURLOPT_VERBOSE, 1L);

        /* re-add it */
        multi_add_handle(m, curl[0]);
#else
        FUNC11(m, curl[current]);
#endif
      }
      else {
        break; /* done */
      }
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

#if defined(LIB526)

  /* test 526 and 528 */
  /* proper cleanup sequence - type PB */

  for(i = 0; i < NUM_HANDLES; i++) {
    curl_multi_remove_handle(m, curl[i]);
    curl_easy_cleanup(curl[i]);
  }
  curl_multi_cleanup(m);
  curl_global_cleanup();

#elif defined(LIB527)

  /* test 527 */

  /* Upon non-failure test flow the easy's have already been cleanup'ed. In
     case there is a failure we arrive here with easy's that have not been
     cleanup'ed yet, in this case we have to cleanup them or otherwise these
     will be leaked, let's use undocumented cleanup sequence - type UB */

  if(res)
    for(i = 0; i < NUM_HANDLES; i++)
      curl_easy_cleanup(curl[i]);

  curl_multi_cleanup(m);
  curl_global_cleanup();

#elif defined(LIB532)

  /* test 532 */
  /* undocumented cleanup sequence - type UB */

  for(i = 0; i < NUM_HANDLES; i++)
    curl_easy_cleanup(curl[i]);
  curl_multi_cleanup(m);
  curl_global_cleanup();

#endif

  return res;
}