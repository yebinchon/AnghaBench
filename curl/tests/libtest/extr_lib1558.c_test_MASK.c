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
 int /*<<< orphan*/  CURLINFO_PROTOCOL ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,long) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC10(char *URL)
{
  CURLcode res = 0;
  CURL *curl = NULL;
  long protocol = 0;

  FUNC8(CURL_GLOBAL_ALL);
  FUNC5(curl);

  FUNC6(curl, CURLOPT_URL, URL);
  res = FUNC2(curl);
  if(res) {
    FUNC7(stderr, "curl_easy_perform() returned %d (%s)\n",
            res, FUNC3(res));
    goto test_cleanup;
  }

  res = FUNC1(curl, CURLINFO_PROTOCOL, &protocol);
  if(res) {
    FUNC7(stderr, "curl_easy_getinfo() returned %d (%s)\n",
            res, FUNC3(res));
    goto test_cleanup;
  }

  FUNC9("Protocol: %x\n", protocol);

  FUNC0(curl);
  FUNC4();

  return 0;

test_cleanup:

  FUNC0(curl);
  FUNC4();

  return res; /* return the final return code */
}