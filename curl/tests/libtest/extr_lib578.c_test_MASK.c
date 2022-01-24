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
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_HEADER ; 
 int /*<<< orphan*/  CURLOPT_NOPROGRESS ; 
 int /*<<< orphan*/  CURLOPT_POST ; 
 int /*<<< orphan*/  CURLOPT_POSTFIELDS ; 
 int /*<<< orphan*/  CURLOPT_POSTFIELDSIZE ; 
 int /*<<< orphan*/  CURLOPT_PROGRESSFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_TRANSFERTEXT ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 long data ; 
 scalar_t__ data_size ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 long progress_callback ; 
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

  /* Now specify we want to POST data */
  FUNC6(curl, CURLOPT_POST, 1L);

#ifdef CURL_DOES_CONVERSIONS
  /* Convert the POST data to ASCII */
  test_setopt(curl, CURLOPT_TRANSFERTEXT, 1L);
#endif

  /* Set the expected POST size */
  FUNC6(curl, CURLOPT_POSTFIELDSIZE, (long)data_size);
  FUNC6(curl, CURLOPT_POSTFIELDS, data);

  /* we want to use our own progress function */
  FUNC6(curl, CURLOPT_NOPROGRESS, 0L);
  FUNC6(curl, CURLOPT_PROGRESSFUNCTION, progress_callback);

  /* pointer to pass to our read function */

  /* get verbose debug output please */
  FUNC6(curl, CURLOPT_VERBOSE, 1L);

  /* include headers in the output */
  FUNC6(curl, CURLOPT_HEADER, 1L);

  /* Perform the request, res will get the return code */
  res = FUNC2(curl);

test_cleanup:

  /* always cleanup */
  FUNC0(curl);
  FUNC3();

  return res;
}