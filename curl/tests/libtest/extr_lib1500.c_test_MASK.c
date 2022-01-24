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
struct TYPE_4__ {int result; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
typedef  TYPE_2__ CURLMsg ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int CURLM_OK ; 
 int /*<<< orphan*/  CURLOPT_HEADER ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int TEST_ERR_FAILURE ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  TEST_HANG_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 () ; 

int FUNC14(char *URL)
{
  CURL *curls = NULL;
  CURLM *multi = NULL;
  int still_running;
  int i = TEST_ERR_FAILURE;
  int res = 0;
  CURLMsg *msg;

  FUNC13();

  FUNC8(CURL_GLOBAL_ALL);

  FUNC10(multi);

  FUNC6(curls);

  FUNC7(curls, CURLOPT_URL, URL);
  FUNC7(curls, CURLOPT_HEADER, 1L);

  FUNC9(multi, curls);

  FUNC11(multi, &still_running);

  FUNC0();

  while(still_running) {
    int num;
    res = FUNC5(multi, NULL, 0, TEST_HANG_TIMEOUT, &num);
    if(res != CURLM_OK) {
      FUNC12("curl_multi_wait() returned %d\n", res);
      res = TEST_ERR_MAJOR_BAD;
      goto test_cleanup;
    }

    FUNC0();

    FUNC11(multi, &still_running);

    FUNC0();
  }

  msg = FUNC4(multi, &still_running);
  if(msg)
    /* this should now contain a result code from the easy handle,
       get it */
    i = msg->data.result;

test_cleanup:

  /* undocumented cleanup sequence - type UA */

  FUNC3(multi);
  FUNC1(curls);
  FUNC2();

  if(res)
    i = res;

  return i; /* return the final return code */
}