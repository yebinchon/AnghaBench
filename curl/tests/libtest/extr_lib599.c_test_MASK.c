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
typedef  int /*<<< orphan*/  FILE ;
typedef  int CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLINFO_CONTENT_LENGTH_DOWNLOAD ; 
 int /*<<< orphan*/  CURLOPT_FOLLOWLOCATION ; 
 int /*<<< orphan*/  CURLOPT_HEADER ; 
 int /*<<< orphan*/  CURLOPT_NOPROGRESS ; 
 int /*<<< orphan*/  CURLOPT_PROGRESSFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  libtest_arg2 ; 
 long progress_callback ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

int FUNC10(char *URL)
{
  CURL *curl;
  CURLcode res = CURLE_OK;
  double content_length = 0.0;

  if(FUNC5(CURL_GLOBAL_ALL) != CURLE_OK) {
    FUNC8(&stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  curl = FUNC2();
  if(!curl) {
    FUNC8(&stderr, "curl_easy_init() failed\n");
    FUNC4();
    return TEST_ERR_MAJOR_BAD;
  }

  /* First set the URL that is about to receive our POST. */
  FUNC9(curl, CURLOPT_URL, URL);

  /* we want to use our own progress function */
  FUNC9(curl, CURLOPT_NOPROGRESS, 0L);
  FUNC9(curl, CURLOPT_PROGRESSFUNCTION, progress_callback);

  /* get verbose debug output please */
  FUNC9(curl, CURLOPT_VERBOSE, 1L);

  /* follow redirects */
  FUNC9(curl, CURLOPT_FOLLOWLOCATION, 1L);

  /* include headers in the output */
  FUNC9(curl, CURLOPT_HEADER, 1L);

  /* Perform the request, res will get the return code */
  res = FUNC3(curl);

  if(!res) {
    FILE *moo;
    res = FUNC1(curl, CURLINFO_CONTENT_LENGTH_DOWNLOAD,
                            &content_length);
    moo = FUNC7(libtest_arg2, "wb");
    if(moo) {
      FUNC8(moo, "CL: %.0f\n", content_length);
      FUNC6(moo);
    }
  }

test_cleanup:

  /* always cleanup */
  FUNC0(curl);
  FUNC4();

  return res;
}