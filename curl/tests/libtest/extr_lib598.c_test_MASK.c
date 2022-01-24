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
 int /*<<< orphan*/  CURLOPT_COOKIE ; 
 int /*<<< orphan*/  CURLOPT_HEADER ; 
 int /*<<< orphan*/  CURLOPT_REFERER ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_USERAGENT ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

int FUNC8(char *URL)
{
  CURLcode res;
  CURL *curl;

  if(FUNC5(CURL_GLOBAL_ALL) != CURLE_OK) {
    FUNC6(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  curl = FUNC1();
  if(!curl) {
    FUNC6(stderr, "curl_easy_init() failed\n");
    FUNC4();
    return TEST_ERR_MAJOR_BAD;
  }

  FUNC7(curl, CURLOPT_URL, URL);
  FUNC7(curl, CURLOPT_HEADER, 1L);
  FUNC7(curl, CURLOPT_REFERER, "http://example.com/the-moo");
  FUNC7(curl, CURLOPT_USERAGENT, "the-moo agent next generation");
  FUNC7(curl, CURLOPT_COOKIE, "name=moo");
  FUNC7(curl, CURLOPT_VERBOSE, 1L);

  res = FUNC2(curl);
  if(res) {
    FUNC6(stderr, "retrieve 1 failed\n");
    goto test_cleanup;
  }

  FUNC3(curl);

  FUNC7(curl, CURLOPT_URL, URL);
  FUNC7(curl, CURLOPT_HEADER, 1L);
  FUNC7(curl, CURLOPT_VERBOSE, 1L);

  res = FUNC2(curl);
  if(res)
    FUNC6(stderr, "retrieve 2 failed\n");

test_cleanup:

  FUNC0(curl);
  FUNC4();

  return (int)res;
}