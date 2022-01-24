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
 long CURLAUTH_NONE ; 
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  libtest_arg2 ; 
 int /*<<< orphan*/  libtest_arg3 ; 
 long FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int,long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,int,long) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC8(char *url)
{
  CURLcode res;
  CURL *curl = NULL;

  long main_auth_scheme = FUNC5(libtest_arg2);
  long fallback_auth_scheme = FUNC5(libtest_arg3);

  if(main_auth_scheme == CURLAUTH_NONE ||
      fallback_auth_scheme == CURLAUTH_NONE) {
    FUNC4(stderr, "auth schemes not found on commandline\n");
    return TEST_ERR_MAJOR_BAD;
  }

  if(FUNC3(CURL_GLOBAL_ALL) != CURLE_OK) {
    FUNC4(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  /* Send wrong password, then right password */

  curl = FUNC1();
  if(!curl) {
    FUNC4(stderr, "curl_easy_init() failed\n");
    FUNC2();
    return TEST_ERR_MAJOR_BAD;
  }

  res = FUNC7(curl, url, 100, main_auth_scheme);
  if(res != CURLE_OK)
    goto test_cleanup;

  res = FUNC6(curl, url, 200, fallback_auth_scheme);
  if(res != CURLE_OK)
    goto test_cleanup;

  FUNC0(curl);

  /* Send wrong password twice, then right password */
  curl = FUNC1();
  if(!curl) {
    FUNC4(stderr, "curl_easy_init() failed\n");
    FUNC2();
    return TEST_ERR_MAJOR_BAD;
  }

  res = FUNC7(curl, url, 300, main_auth_scheme);
  if(res != CURLE_OK)
    goto test_cleanup;

  res = FUNC7(curl, url, 400, fallback_auth_scheme);
  if(res != CURLE_OK)
    goto test_cleanup;

  res = FUNC6(curl, url, 500, fallback_auth_scheme);
  if(res != CURLE_OK)
    goto test_cleanup;

test_cleanup:

  FUNC0(curl);
  FUNC2();

  return (int)res;
}