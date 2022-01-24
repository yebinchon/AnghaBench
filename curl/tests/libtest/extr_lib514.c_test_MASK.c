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
 int /*<<< orphan*/  CURLOPT_NOBODY ; 
 int /*<<< orphan*/  CURLOPT_POST ; 
 int /*<<< orphan*/  CURLOPT_POSTFIELDS ; 
 int /*<<< orphan*/  CURLOPT_POSTFIELDSIZE ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

int FUNC7(char *URL)
{
  CURL *curl;
  CURLcode res = CURLE_OK;

  if(FUNC4(CURL_GLOBAL_ALL) != CURLE_OK) {
    FUNC5(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  curl = FUNC1();
  if(!curl) {
    FUNC5(stderr, "curl_easy_init() failed\n");
    FUNC3();
    return TEST_ERR_MAJOR_BAD;
  }

  /* First set the URL that is about to receive our POST. */
  FUNC6(curl, CURLOPT_URL, URL);

  /* Based on a bug report by Niels van Tongeren on June 29, 2004:

  A weird situation occurs when request 1 is a POST request and the request
  2 is a HEAD request. For the POST request we set the CURLOPT_POSTFIELDS,
  CURLOPT_POSTFIELDSIZE and CURLOPT_POST options. For the HEAD request we
  set the CURLOPT_NOBODY option to '1'.

  */

  FUNC6(curl, CURLOPT_POSTFIELDS, "moo");
  FUNC6(curl, CURLOPT_POSTFIELDSIZE, 3L);
  FUNC6(curl, CURLOPT_POST, 1L);

  /* this is where transfer 1 would take place, but skip that and change
     options right away instead */

  FUNC6(curl, CURLOPT_NOBODY, 1L);

  FUNC6(curl, CURLOPT_VERBOSE, 1L); /* show verbose for debug */
  FUNC6(curl, CURLOPT_HEADER, 1L); /* include header */

  /* Now, we should be making a fine HEAD request */

  /* Perform the request 2, res will get the return code */
  res = FUNC2(curl);

test_cleanup:

  /* always cleanup */
  FUNC0(curl);
  FUNC3();

  return (int)res;
}