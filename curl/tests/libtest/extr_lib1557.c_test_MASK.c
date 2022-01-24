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
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLMOPT_MAX_HOST_CONNECTIONS ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC11(char *URL)
{
  CURLM *curlm = NULL;
  CURL *curl1 = NULL;
  CURL *curl2 = NULL;
  int running_handles = 0;
  int res = 0;

  FUNC5(CURL_GLOBAL_ALL);

  FUNC7(curlm);
  FUNC10(curlm, CURLMOPT_MAX_HOST_CONNECTIONS, 1);

  FUNC3(curl1);
  FUNC4(curl1, CURLOPT_URL, URL);
  FUNC6(curlm, curl1);

  FUNC3(curl2);
  FUNC4(curl2, CURLOPT_URL, URL);
  FUNC6(curlm, curl2);

  FUNC8(curlm, &running_handles);

  FUNC9(curlm, curl2);
  FUNC0(curl2);

  /* If curl2 is still in the connect-pending list, this will crash */
  FUNC9(curlm, curl1);
  FUNC0(curl1);

test_cleanup:
  FUNC2(curlm);
  FUNC1();
  return res;
}