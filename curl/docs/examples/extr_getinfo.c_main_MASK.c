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
 int /*<<< orphan*/  CURLINFO_CONTENT_TYPE ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

int FUNC6(void)
{
  CURL *curl;
  CURLcode res;

  curl = FUNC2();
  if(curl) {
    FUNC4(curl, CURLOPT_URL, "https://www.example.com/");
    res = FUNC3(curl);

    if(CURLE_OK == res) {
      char *ct;
      /* ask for the content-type */
      res = FUNC1(curl, CURLINFO_CONTENT_TYPE, &ct);

      if((CURLE_OK == res) && ct)
        FUNC5("We received Content-Type: %s\n", ct);
    }

    /* always cleanup */
    FUNC0(curl);
  }
  return 0;
}