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
 int /*<<< orphan*/  CURLOPT_HEADER ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC7(void)
{
  CURL *curl;
  CURLcode res;

  FUNC5(CURL_GLOBAL_ALL);

  curl = FUNC1();
  if(curl) {
    FUNC3(curl, CURLOPT_VERBOSE, 1L);
    FUNC3(curl, CURLOPT_HEADER, 1L);

    /* get the first document */
    FUNC3(curl, CURLOPT_URL, "https://example.com/");

    /* Perform the request, res will get the return code */
    res = FUNC2(curl);
    /* Check for errors */
    if(res != CURLE_OK)
      FUNC6(stderr, "curl_easy_perform() failed: %s\n",
              FUNC4(res));

    /* get another document from the same server using the same
       connection */
    FUNC3(curl, CURLOPT_URL, "https://example.com/docs/");

    /* Perform the request, res will get the return code */
    res = FUNC2(curl);
    /* Check for errors */
    if(res != CURLE_OK)
      FUNC6(stderr, "curl_easy_perform() failed: %s\n",
              FUNC4(res));

    /* always cleanup */
    FUNC0(curl);
  }

  return 0;
}