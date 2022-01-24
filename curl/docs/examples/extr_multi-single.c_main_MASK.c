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
typedef  scalar_t__ CURLMcode ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLM_OK ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURL_GLOBAL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC13(void)
{
  CURL *http_handle;
  CURLM *multi_handle;

  int still_running = 0; /* keep number of running handles */
  int repeats = 0;

  FUNC5(CURL_GLOBAL_DEFAULT);

  http_handle = FUNC2();

  /* set the options (I left out a few, you'll get the point anyway) */
  FUNC3(http_handle, CURLOPT_URL, "https://www.example.com/");

  /* init a multi stack */
  multi_handle = FUNC8();

  /* add the individual transfers */
  FUNC6(multi_handle, http_handle);

  /* we start some action by calling perform right away */
  FUNC9(multi_handle, &still_running);

  while(still_running) {
    CURLMcode mc; /* curl_multi_wait() return code */
    int numfds;

    /* wait for activity, timeout or "nothing" */
    mc = FUNC11(multi_handle, NULL, 0, 1000, &numfds);

    if(mc != CURLM_OK) {
      FUNC12(stderr, "curl_multi_wait() failed, code %ld.\n", mc);
      break;
    }

    /* 'numfds' being zero means either a timeout or no file descriptors to
       wait for. Try timeout on first occurrence, then assume no file
       descriptors and no file descriptors to wait for means wait for 100
       milliseconds. */

    if(!numfds) {
      repeats++; /* count number of repeated zero numfds */
      if(repeats > 1) {
        FUNC0(100); /* sleep 100 milliseconds */
      }
    }
    else
      repeats = 0;

    FUNC9(multi_handle, &still_running);
  }

  FUNC10(multi_handle, http_handle);

  FUNC1(http_handle);

  FUNC7(multi_handle);

  FUNC4();

  return 0;
}