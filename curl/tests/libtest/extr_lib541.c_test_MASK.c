#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  st_size; } ;
typedef  TYPE_1__ struct_stat ;
typedef  char FILE ;
typedef  int CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_READDATA ; 
 int /*<<< orphan*/  CURLOPT_UPLOAD ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int TEST_ERR_MAJOR_BAD ; 
 int TEST_ERR_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 char* libtest_arg2 ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

int FUNC12(char *URL)
{
  CURL *curl;
  CURLcode res = CURLE_OK;
  FILE *hd_src;
  int hd;
  struct_stat file_info;

  if(!libtest_arg2) {
    FUNC8(stderr, "Usage: <url> <file-to-upload>\n");
    return TEST_ERR_USAGE;
  }

  hd_src = FUNC7(libtest_arg2, "rb");
  if(NULL == hd_src) {
    FUNC8(stderr, "fopen failed with error: %d %s\n",
            errno, FUNC10(errno));
    FUNC8(stderr, "Error opening file: %s\n", libtest_arg2);
    return -2; /* if this happens things are major weird */
  }

  /* get the file size of the local file */
  hd = FUNC9(FUNC6(hd_src), &file_info);
  if(hd == -1) {
    /* can't open file, bail out */
    FUNC8(stderr, "fstat() failed with error: %d %s\n",
            errno, FUNC10(errno));
    FUNC8(stderr, "ERROR: cannot open file %s\n", libtest_arg2);
    FUNC5(hd_src);
    return TEST_ERR_MAJOR_BAD;
  }

  if(! file_info.st_size) {
    FUNC8(stderr, "ERROR: file %s has zero size!\n", libtest_arg2);
    FUNC5(hd_src);
    return TEST_ERR_MAJOR_BAD;
  }

  if(FUNC4(CURL_GLOBAL_ALL) != CURLE_OK) {
    FUNC8(stderr, "curl_global_init() failed\n");
    FUNC5(hd_src);
    return TEST_ERR_MAJOR_BAD;
  }

  /* get a curl handle */
  curl = FUNC1();
  if(!curl) {
    FUNC8(stderr, "curl_easy_init() failed\n");
    FUNC3();
    FUNC5(hd_src);
    return TEST_ERR_MAJOR_BAD;
  }

  /* enable uploading */
  FUNC11(curl, CURLOPT_UPLOAD, 1L);

  /* enable verbose */
  FUNC11(curl, CURLOPT_VERBOSE, 1L);

  /* specify target */
  FUNC11(curl, CURLOPT_URL, URL);

  /* now specify which file to upload */
  FUNC11(curl, CURLOPT_READDATA, hd_src);

  /* Now run off and do what you've been told! */
  FUNC2(curl);

  /* and now upload the exact same again, but without rewinding so it already
     is at end of file */
  res = FUNC2(curl);

test_cleanup:

  /* close the local file */
  FUNC5(hd_src);

  FUNC0(curl);
  FUNC3();

  return res;
}