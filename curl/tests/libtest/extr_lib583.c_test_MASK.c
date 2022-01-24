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
 int /*<<< orphan*/  CURLOPT_INFILESIZE ; 
 int /*<<< orphan*/  CURLOPT_SSH_PRIVATE_KEYFILE ; 
 int /*<<< orphan*/  CURLOPT_SSH_PUBLIC_KEYFILE ; 
 int /*<<< orphan*/  CURLOPT_UPLOAD ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_USERPWD ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 long libtest_arg2 ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC11(char *URL)
{
  int stillRunning;
  CURLM *multiHandle = NULL;
  CURL *curl = NULL;
  CURLMcode res = CURLM_OK;

  FUNC7(CURL_GLOBAL_ALL);

  FUNC9(multiHandle);

  FUNC4(curl);

  FUNC5(curl, CURLOPT_USERPWD, libtest_arg2);
  FUNC5(curl, CURLOPT_SSH_PUBLIC_KEYFILE, "curl_client_key.pub");
  FUNC5(curl, CURLOPT_SSH_PRIVATE_KEYFILE, "curl_client_key");

  FUNC5(curl, CURLOPT_UPLOAD, 1L);
  FUNC5(curl, CURLOPT_VERBOSE, 1L);

  FUNC5(curl, CURLOPT_URL, URL);
  FUNC5(curl, CURLOPT_INFILESIZE, (long)5);

  FUNC8(multiHandle, curl);

  /* this tests if removing an easy handle immediately after multi
     perform has been called succeeds or not. */

  FUNC6(stderr, "curl_multi_perform()...\n");

  FUNC10(multiHandle, &stillRunning);

  FUNC6(stderr, "curl_multi_perform() succeeded\n");

  FUNC6(stderr, "curl_multi_remove_handle()...\n");
  res = FUNC3(multiHandle, curl);
  if(res)
    FUNC6(stderr, "curl_multi_remove_handle() failed, "
            "with code %d\n", (int)res);
  else
    FUNC6(stderr, "curl_multi_remove_handle() succeeded\n");

test_cleanup:

  /* undocumented cleanup sequence - type UB */

  FUNC0(curl);
  FUNC2(multiHandle);
  FUNC1();

  return (int)res;
}