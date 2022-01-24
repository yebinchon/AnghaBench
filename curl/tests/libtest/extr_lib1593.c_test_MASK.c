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
typedef  char curl_slist ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLINFO_CONDITION_UNMET ; 
 int /*<<< orphan*/  CURLOPT_HTTPHEADER ; 
 int /*<<< orphan*/  CURLOPT_TIMECONDITION ; 
 int /*<<< orphan*/  CURLOPT_TIMEVALUE ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 scalar_t__ CURL_TIMECOND_IFMODSINCE ; 
 int TEST_ERR_FAILURE ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(char *URL)
{
  struct curl_slist *header = NULL;
  long unmet;
  CURL *curl = NULL;
  int res = 0;

  FUNC8(CURL_GLOBAL_ALL);

  FUNC6(curl);

  FUNC7(curl, CURLOPT_URL, URL);
  FUNC7(curl, CURLOPT_TIMECONDITION, (long)CURL_TIMECOND_IFMODSINCE);
  /* Some TIMEVALUE; it doesn't matter. */
  FUNC7(curl, CURLOPT_TIMEVALUE, 1566210680L);

  header = FUNC4(NULL, "If-Modified-Since:");
  if(!header) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }

  FUNC7(curl, CURLOPT_HTTPHEADER, header);

  res = FUNC2(curl);
  if(res)
    goto test_cleanup;

  /* Confirm that the condition checking still worked, even though we
   * suppressed the actual header.
   * The server returns 304, which means the condition is "unmet".
   */

  res = FUNC1(curl, CURLINFO_CONDITION_UNMET, &unmet);
  if(res)
    goto test_cleanup;

  if(unmet != 1L) {
    res = TEST_ERR_FAILURE;
    goto test_cleanup;
  }

test_cleanup:

  /* always cleanup */
  FUNC0(curl);
  FUNC5(header);
  FUNC3();

  return res;
}