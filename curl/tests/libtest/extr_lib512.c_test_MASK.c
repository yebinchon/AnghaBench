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
 int /*<<< orphan*/  CURLOPT_HEADER ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(char *URL)
{
  CURLcode code;
  int rc = 99;

  code = FUNC6(CURL_GLOBAL_ALL);
  if(code == CURLE_OK) {
    CURL *curl = FUNC2();
    if(curl) {
      CURL *curl2;

      FUNC4(curl, CURLOPT_VERBOSE, 1L);
      FUNC4(curl, CURLOPT_HEADER, 1L);

      curl2 = FUNC1(curl);
      if(curl2) {

        code = FUNC4(curl2, CURLOPT_URL, URL);
        if(code == CURLE_OK) {

          code = FUNC3(curl2);
          if(code == CURLE_OK)
            rc = 0;
          else
            rc = 1;
        }
        else
          rc = 2;

        FUNC0(curl2);
      }
      else
        rc = 3;

      FUNC0(curl);
    }
    else
      rc = 4;

    FUNC5();
  }
  else
    rc = 5;

  return rc;
}