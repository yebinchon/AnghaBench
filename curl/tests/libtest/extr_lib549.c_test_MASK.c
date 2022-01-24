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
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_PROXY ; 
 int /*<<< orphan*/  CURLOPT_PROXY_TRANSFER_MODE ; 
 int /*<<< orphan*/  CURLOPT_TRANSFERTEXT ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 long libtest_arg2 ; 
 scalar_t__ libtest_arg3 ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

int FUNC7(char *URL)
{
  CURLcode res;
  CURL *curl;

  if(FUNC4(CURL_GLOBAL_ALL) != CURLE_OK) {
    FUNC5(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  curl = FUNC1();
  if(!curl) {
    FUNC5(stderr, "curl_easy_init() failed\n");
    FUNC3();
    return TEST_ERR_MAJOR_BAD;
  }

  FUNC6(curl, CURLOPT_PROXY, libtest_arg2);
  FUNC6(curl, CURLOPT_URL, URL);
  FUNC6(curl, CURLOPT_PROXY_TRANSFER_MODE, 1L);
  FUNC6(curl, CURLOPT_VERBOSE, 1L);
  if(libtest_arg3) {
    /* enable ascii/text mode */
    FUNC6(curl, CURLOPT_TRANSFERTEXT, 1L);
  }

  res = FUNC2(curl);

test_cleanup:

  FUNC0(curl);
  FUNC3();

  return (int)res;
}