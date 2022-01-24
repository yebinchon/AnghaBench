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
struct TYPE_3__ {scalar_t__ st_size; } ;
typedef  TYPE_1__ struct_stat ;
typedef  char curl_slist ;
typedef  char* curl_off_t ;
typedef  char FILE ;
typedef  int CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_INFILESIZE_LARGE ; 
 int /*<<< orphan*/  CURLOPT_POSTQUOTE ; 
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
 char* FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 char* libtest_arg2 ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

int FUNC14(char *URL)
{
  CURL *curl;
  CURLcode res = CURLE_OK;
  FILE *hd_src;
  int hd;
  struct_stat file_info;
  struct curl_slist *hl;

  struct curl_slist *headerlist = NULL;
  const char *buf_1 = "RNFR 505";
  const char *buf_2 = "RNTO 505-forreal";

  if(!libtest_arg2) {
    FUNC10(stderr, "Usage: <url> <file-to-upload>\n");
    return TEST_ERR_USAGE;
  }

  hd_src = FUNC9(libtest_arg2, "rb");
  if(NULL == hd_src) {
    FUNC10(stderr, "fopen failed with error: %d %s\n",
            errno, FUNC12(errno));
    FUNC10(stderr, "Error opening file: %s\n", libtest_arg2);
    return TEST_ERR_MAJOR_BAD; /* if this happens things are major weird */
  }

  /* get the file size of the local file */
  hd = FUNC11(FUNC8(hd_src), &file_info);
  if(hd == -1) {
    /* can't open file, bail out */
    FUNC10(stderr, "fstat() failed with error: %d %s\n",
            errno, FUNC12(errno));
    FUNC10(stderr, "ERROR: cannot open file %s\n", libtest_arg2);
    FUNC7(hd_src);
    return TEST_ERR_MAJOR_BAD;
  }

  if(! file_info.st_size) {
    FUNC10(stderr, "ERROR: file %s has zero size!\n", libtest_arg2);
    FUNC7(hd_src);
    return TEST_ERR_MAJOR_BAD;
  }

  if(FUNC4(CURL_GLOBAL_ALL) != CURLE_OK) {
    FUNC10(stderr, "curl_global_init() failed\n");
    FUNC7(hd_src);
    return TEST_ERR_MAJOR_BAD;
  }

  /* get a curl handle */
  curl = FUNC1();
  if(!curl) {
    FUNC10(stderr, "curl_easy_init() failed\n");
    FUNC3();
    FUNC7(hd_src);
    return TEST_ERR_MAJOR_BAD;
  }

  /* build a list of commands to pass to libcurl */

  hl = FUNC5(headerlist, buf_1);
  if(!hl) {
    FUNC10(stderr, "curl_slist_append() failed\n");
    FUNC0(curl);
    FUNC3();
    FUNC7(hd_src);
    return TEST_ERR_MAJOR_BAD;
  }
  headerlist = FUNC5(hl, buf_2);
  if(!headerlist) {
    FUNC10(stderr, "curl_slist_append() failed\n");
    FUNC6(hl);
    FUNC0(curl);
    FUNC3();
    FUNC7(hd_src);
    return TEST_ERR_MAJOR_BAD;
  }
  headerlist = hl;

  /* enable uploading */
  FUNC13(curl, CURLOPT_UPLOAD, 1L);

  /* enable verbose */
  FUNC13(curl, CURLOPT_VERBOSE, 1L);

  /* specify target */
  FUNC13(curl, CURLOPT_URL, URL);

  /* pass in that last of FTP commands to run after the transfer */
  FUNC13(curl, CURLOPT_POSTQUOTE, headerlist);

  /* now specify which file to upload */
  FUNC13(curl, CURLOPT_READDATA, hd_src);

  /* and give the size of the upload (optional) */
  FUNC13(curl, CURLOPT_INFILESIZE_LARGE,
                   (curl_off_t)file_info.st_size);

  /* Now run off and do what you've been told! */
  res = FUNC2(curl);

test_cleanup:

  /* clean up the FTP commands list */
  FUNC6(headerlist);

  /* close the local file */
  FUNC7(hd_src);

  FUNC0(curl);
  FUNC3();

  return res;
}