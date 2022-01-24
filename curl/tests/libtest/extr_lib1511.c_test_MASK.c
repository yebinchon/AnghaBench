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
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLINFO_CONDITION_UNMET ; 
 int /*<<< orphan*/  CURLOPT_HEADER ; 
 int /*<<< orphan*/  CURLOPT_TIMECONDITION ; 
 int /*<<< orphan*/  CURLOPT_TIMEVALUE ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 scalar_t__ CURL_TIMECOND_IFMODSINCE ; 
 int TEST_ERR_FAILURE ; 
 int TEST_ERR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(char *URL)
{
  long unmet;
  CURL *curl = NULL;
  int res = 0;

  FUNC6(CURL_GLOBAL_ALL);

  FUNC4(curl);

  FUNC5(curl, CURLOPT_URL, URL);
  FUNC5(curl, CURLOPT_HEADER, 1L);
  FUNC5(curl, CURLOPT_TIMECONDITION, (long)CURL_TIMECOND_IFMODSINCE);

  /* TIMEVALUE in the future */
  FUNC5(curl, CURLOPT_TIMEVALUE, 1566210680L);

  res = FUNC2(curl);
  if(res)
    goto test_cleanup;

  FUNC1(curl, CURLINFO_CONDITION_UNMET, &unmet);
  if(unmet != 1L) {
    res = TEST_ERR_FAILURE; /* not correct */
    goto test_cleanup;
  }

  /* TIMEVALUE in the past */
  FUNC5(curl, CURLOPT_TIMEVALUE, 1L);

  res = FUNC2(curl);
  if(res)
    goto test_cleanup;

  FUNC1(curl, CURLINFO_CONDITION_UNMET, &unmet);
  if(unmet != 0L) {
    res = TEST_ERR_FAILURE; /* not correct */
    goto test_cleanup;
  }

  res = TEST_ERR_SUCCESS; /* this is where we should be */

test_cleanup:

  /* always cleanup */
  FUNC0(curl);
  FUNC3();

  return res;
}