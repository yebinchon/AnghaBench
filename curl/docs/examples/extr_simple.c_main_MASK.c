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
typedef  int /*<<< orphan*/  CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_FOLLOWLOCATION ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC6(void)
{
  CURL *curl;
  CURLcode res;

  curl = FUNC1();
  if(curl) {
    FUNC3(curl, CURLOPT_URL, "https://example.com");
    /* example.com is redirected, so we tell libcurl to follow redirection */
    FUNC3(curl, CURLOPT_FOLLOWLOCATION, 1L);

    /* Perform the request, res will get the return code */
    res = FUNC2(curl);
    /* Check for errors */
    if(res != CURLE_OK)
      FUNC5(stderr, "curl_easy_perform() failed: %s\n",
              FUNC4(res));

    /* always cleanup */
    FUNC0(curl);
  }
  return 0;
}