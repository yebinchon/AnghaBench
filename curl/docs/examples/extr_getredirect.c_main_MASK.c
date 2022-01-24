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
 int /*<<< orphan*/  CURLINFO_REDIRECT_URL ; 
 int /*<<< orphan*/  CURLINFO_RESPONSE_CODE ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC8(void)
{
  CURL *curl;
  CURLcode res;
  char *location;
  long response_code;

  curl = FUNC2();
  if(curl) {
    FUNC4(curl, CURLOPT_URL, "https://example.com");

    /* example.com is redirected, figure out the redirection! */

    /* Perform the request, res will get the return code */
    res = FUNC3(curl);
    /* Check for errors */
    if(res != CURLE_OK)
      FUNC6(stderr, "curl_easy_perform() failed: %s\n",
              FUNC5(res));
    else {
      res = FUNC1(curl, CURLINFO_RESPONSE_CODE, &response_code);
      if((res == CURLE_OK) &&
         ((response_code / 100) != 3)) {
        /* a redirect implies a 3xx response code */
        FUNC6(stderr, "Not a redirect.\n");
      }
      else {
        res = FUNC1(curl, CURLINFO_REDIRECT_URL, &location);

        if((res == CURLE_OK) && location) {
          /* This is the new absolute URL that you could redirect to, even if
           * the Location: response header may have been a relative URL. */
          FUNC7("Redirected to: %s\n", location);
        }
      }
    }

    /* always cleanup */
    FUNC0(curl);
  }
  return 0;
}