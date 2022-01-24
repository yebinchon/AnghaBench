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
typedef  int /*<<< orphan*/  curl_mimepart ;
typedef  int /*<<< orphan*/  curl_mime ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int CURLM_OK ; 
 int /*<<< orphan*/  CURLOPT_HEADER ; 
 int /*<<< orphan*/  CURLOPT_MIMEPOST ; 
 int /*<<< orphan*/  CURLOPT_NOPROGRESS ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_USERPWD ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURLOPT_XFERINFOFUNCTION ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  CURL_ZERO_TERMINATED ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  TEST_HANG_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 long xferinfo ; 

int FUNC19(char *URL)
{
  CURL *curls = NULL;
  CURLM *multi = NULL;
  int still_running;
  int i = 0;
  int res = 0;
  curl_mimepart *field = NULL;
  curl_mime *mime = NULL;
  int counter = 1;

  FUNC18();

  FUNC13(CURL_GLOBAL_ALL);

  FUNC15(multi);

  FUNC11(curls);

  mime = FUNC6(curls);
  field = FUNC3(mime);
  FUNC7(field, "name");
  FUNC4(field, "value", CURL_ZERO_TERMINATED);

  FUNC12(curls, CURLOPT_URL, URL);
  FUNC12(curls, CURLOPT_HEADER, 1L);
  FUNC12(curls, CURLOPT_VERBOSE, 1L);
  FUNC12(curls, CURLOPT_MIMEPOST, mime);
  FUNC12(curls, CURLOPT_USERPWD, "u:s");
  FUNC12(curls, CURLOPT_XFERINFOFUNCTION, xferinfo);
  FUNC12(curls, CURLOPT_NOPROGRESS, 1L);

  FUNC14(multi, curls);

  FUNC16(multi, &still_running);

  FUNC0();

  while(still_running && counter--) {
    int num;
    res = FUNC10(multi, NULL, 0, TEST_HANG_TIMEOUT, &num);
    if(res != CURLM_OK) {
      FUNC17("curl_multi_wait() returned %d\n", res);
      res = TEST_ERR_MAJOR_BAD;
      goto test_cleanup;
    }

    FUNC0();

    FUNC16(multi, &still_running);

    FUNC0();
  }

test_cleanup:

  FUNC5(mime);
  FUNC9(multi, curls);
  FUNC8(multi);
  FUNC1(curls);
  FUNC2();

  if(res)
    i = res;

  return i; /* return the final return code */
}