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
struct curl_slist {int dummy; } ;
typedef  int /*<<< orphan*/  CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_HTTPHEADER ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 struct curl_slist* FUNC5 (struct curl_slist*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct curl_slist*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC8(void)
{
  CURL *curl;
  CURLcode res;

  curl = FUNC1();
  if(curl) {
    struct curl_slist *chunk = NULL;

    /* Remove a header curl would otherwise add by itself */
    chunk = FUNC5(chunk, "Accept:");

    /* Add a custom header */
    chunk = FUNC5(chunk, "Another: yes");

    /* Modify a header curl otherwise adds differently */
    chunk = FUNC5(chunk, "Host: example.com");

    /* Add a header with "blank" contents to the right of the colon. Note that
       we're then using a semicolon in the string we pass to curl! */
    chunk = FUNC5(chunk, "X-silly-header;");

    /* set our custom set of headers */
    FUNC3(curl, CURLOPT_HTTPHEADER, chunk);

    FUNC3(curl, CURLOPT_URL, "localhost");
    FUNC3(curl, CURLOPT_VERBOSE, 1L);

    res = FUNC2(curl);
    /* Check for errors */
    if(res != CURLE_OK)
      FUNC7(stderr, "curl_easy_perform() failed: %s\n",
              FUNC4(res));

    /* always cleanup */
    FUNC0(curl);

    /* free the custom headers */
    FUNC6(chunk);
  }
  return 0;
}