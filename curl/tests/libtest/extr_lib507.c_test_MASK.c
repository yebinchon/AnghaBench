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
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_4__ {int result; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
typedef  TYPE_2__ CURLMsg ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_HEADER ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
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
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC14 () ; 

int FUNC15(char *URL)
{
  CURL *curls = NULL;
  CURLM *multi = NULL;
  int still_running;
  int i = -1;
  int res = 0;
  CURLMsg *msg;

  FUNC14();

  FUNC8(CURL_GLOBAL_ALL);

  FUNC11(multi);

  FUNC6(curls);

  FUNC7(curls, CURLOPT_URL, URL);
  FUNC7(curls, CURLOPT_HEADER, 1L);

  FUNC9(multi, curls);

  FUNC12(multi, &still_running);

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

    FUNC10(multi, &fdread, &fdwrite, &fdexcep, &maxfd);

    /* At this point, maxfd is guaranteed to be greater or equal than -1. */

    FUNC13(maxfd + 1, &fdread, &fdwrite, &fdexcep, &timeout);

    FUNC1();

    FUNC12(multi, &still_running);

    FUNC1();
  }

  msg = FUNC5(multi, &still_running);
  if(msg)
    /* this should now contain a result code from the easy handle,
       get it */
    i = msg->data.result;

test_cleanup:

  /* undocumented cleanup sequence - type UA */

  FUNC4(multi);
  FUNC2(curls);
  FUNC3();

  if(res)
    i = res;

  return i; /* return the final return code */
}