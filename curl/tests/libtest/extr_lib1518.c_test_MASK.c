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
typedef  int CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int CURLE_OK ; 
 int /*<<< orphan*/  CURLINFO_EFFECTIVE_URL ; 
 int /*<<< orphan*/  CURLINFO_REDIRECT_COUNT ; 
 int /*<<< orphan*/  CURLINFO_REDIRECT_URL ; 
 int /*<<< orphan*/  CURLINFO_RESPONSE_CODE ; 
 int /*<<< orphan*/  CURLOPT_FOLLOWLOCATION ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

int FUNC8(char *URL)
{
  CURL *curl;
  CURLcode res = CURLE_OK;
  long curlResponseCode;
  long curlRedirectCount;
  char *effectiveUrl = NULL;
  char *redirectUrl = NULL;

  curl = FUNC2();
  if(!curl) {
    FUNC5(stderr, "curl_easy_init() failed\n");
    FUNC4();
    return TEST_ERR_MAJOR_BAD;
  }

  FUNC7(curl, CURLOPT_URL, URL);
  /* just to make it explicit and visible in this test: */
  FUNC7(curl, CURLOPT_FOLLOWLOCATION, 0L);

  /* Perform the request, res will get the return code */
  res = FUNC3(curl);

  FUNC1(curl, CURLINFO_RESPONSE_CODE, &curlResponseCode);
  FUNC1(curl, CURLINFO_REDIRECT_COUNT, &curlRedirectCount);
  FUNC1(curl, CURLINFO_EFFECTIVE_URL, &effectiveUrl);
  FUNC1(curl, CURLINFO_REDIRECT_URL, &redirectUrl);

  FUNC6("res: %d\n"
         "status: %d\n"
         "redirects: %d\n"
         "effectiveurl: %s\n"
         "redirecturl: %s\n",
         (int)res,
         (int)curlResponseCode,
         (int)curlRedirectCount,
         effectiveUrl,
         redirectUrl);

test_cleanup:

  /* always cleanup */
  FUNC0(curl);
  FUNC4();

  return res;
}