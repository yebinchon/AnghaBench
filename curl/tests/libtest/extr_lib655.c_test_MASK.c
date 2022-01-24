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
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_COULDNT_RESOLVE_HOST ; 
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_RESOLVER_START_DATA ; 
 int /*<<< orphan*/  CURLOPT_RESOLVER_START_FUNCTION ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 char* TEST_DATA_STRING ; 
 scalar_t__ TEST_ERR_FAILURE ; 
 int TEST_ERR_MAJOR_BAD ; 
 int cb_count ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 char* resolver_alloc_cb_fail ; 
 char* resolver_alloc_cb_pass ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

int FUNC7(char *URL)
{
  CURL *curl;
  CURLcode res = CURLE_OK;

  if(FUNC4(CURL_GLOBAL_ALL) != CURLE_OK) {
    FUNC5(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }
  curl = FUNC1();
  if(!curl) {
    FUNC5(stderr, "curl_easy_init() failed\n");
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }

  /* First set the URL that is about to receive our request. */
  FUNC6(curl, CURLOPT_URL, URL);

  FUNC6(curl, CURLOPT_RESOLVER_START_DATA, TEST_DATA_STRING);
  FUNC6(curl, CURLOPT_RESOLVER_START_FUNCTION, resolver_alloc_cb_fail);

  /* this should fail */
  res = FUNC2(curl);
  if(res != CURLE_COULDNT_RESOLVE_HOST) {
    FUNC5(stderr, "curl_easy_perform should have returned "
            "CURLE_COULDNT_RESOLVE_HOST but instead returned error %ld\n", res);
    if(res == CURLE_OK)
      res = TEST_ERR_FAILURE;
    goto test_cleanup;
  }

  FUNC6(curl, CURLOPT_RESOLVER_START_FUNCTION, resolver_alloc_cb_pass);

  /* this should succeed */
  res = FUNC2(curl);
  if(res) {
    FUNC5(stderr, "curl_easy_perform failed.\n");
    goto test_cleanup;
  }

  if(cb_count != 2) {
    FUNC5(stderr, "Unexpected number of callbacks: %d\n", cb_count);
    res = TEST_ERR_FAILURE;
    goto test_cleanup;
  }

test_cleanup:
  /* always cleanup */
  FUNC0(curl);
  FUNC3();

  return (int)res;
}