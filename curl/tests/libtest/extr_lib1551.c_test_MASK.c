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
 int /*<<< orphan*/  CURLOPT_FOLLOWLOCATION ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC7(char *URL)
{
  CURL *curl;
  CURLcode res = CURLE_OK;

  FUNC6(CURL_GLOBAL_ALL);
  curl = FUNC1();
  if(curl) {
    FUNC3(curl, CURLOPT_URL, URL);
    FUNC3(curl, CURLOPT_FOLLOWLOCATION, 1L);
    FUNC3(curl, CURLOPT_VERBOSE, 1L);
    res = FUNC2(curl);

    FUNC5(stderr, "****************************** Do it again\n");
    res = FUNC2(curl);
    FUNC0(curl);
  }
  FUNC4();
  return (int)res;
}