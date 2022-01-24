#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_sec; int tv_usec; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_4__ {int result; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
typedef  TYPE_2__ CURLMsg ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_CONNECT_ONLY ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int INT_MAX ; 
 int TEST_HANG_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,long*) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC16 () ; 

int FUNC17(char *URL)
{
  CURL *easy = NULL;
  CURLM *multi = NULL;
  int res = 0;
  int running;
  int msgs_left;
  CURLMsg *msg;

  FUNC16();

  FUNC8(CURL_GLOBAL_ALL);

  FUNC6(easy);

  FUNC11(multi);

  /* go verbose */
  FUNC7(easy, CURLOPT_VERBOSE, 1L);

  /* specify target */
  FUNC7(easy, CURLOPT_URL, URL);

  FUNC7(easy, CURLOPT_CONNECT_ONLY, 1L);

  FUNC9(multi, easy);

  for(;;) {
    struct timeval interval;
    fd_set fdread;
    fd_set fdwrite;
    fd_set fdexcep;
    long timeout = -99;
    int maxfd = -99;

    FUNC12(multi, &running);

    FUNC1();

    if(!running)
      break; /* done */

    FUNC0(&fdread);
    FUNC0(&fdwrite);
    FUNC0(&fdexcep);

    FUNC10(multi, &fdread, &fdwrite, &fdexcep, &maxfd);

    /* At this point, maxfd is guaranteed to be greater or equal than -1. */

    FUNC14(multi, &timeout);

    /* At this point, timeout is guaranteed to be greater or equal than
       -1. */

    if(timeout != -1L) {
      int itimeout = (timeout > (long)INT_MAX) ? INT_MAX : (int)timeout;
      interval.tv_sec = itimeout/1000;
      interval.tv_usec = (itimeout%1000)*1000;
    }
    else {
      interval.tv_sec = TEST_HANG_TIMEOUT/1000 + 1;
      interval.tv_usec = 0;
    }

    FUNC15(maxfd + 1, &fdread, &fdwrite, &fdexcep, &interval);

    FUNC1();
  }

  msg = FUNC5(multi, &msgs_left);
  if(msg)
    res = msg->data.result;

  FUNC13(multi, easy);

test_cleanup:

  /* undocumented cleanup sequence - type UA */

  FUNC4(multi);
  FUNC2(easy);
  FUNC3();

  return res;
}