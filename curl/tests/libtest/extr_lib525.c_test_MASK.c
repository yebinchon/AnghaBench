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
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  char* curl_off_t ;
typedef  char FILE ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_FTPPORT ; 
 int /*<<< orphan*/  CURLOPT_INFILESIZE_LARGE ; 
 int /*<<< orphan*/  CURLOPT_READDATA ; 
 int /*<<< orphan*/  CURLOPT_UPLOAD ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int TEST_ERR_FOPEN ; 
 int TEST_ERR_FSTAT ; 
 int TEST_ERR_USAGE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC12 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 char* libtest_arg2 ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC20 (int) ; 

int FUNC21(char *URL)
{
  int res = 0;
  CURL *curl = NULL;
  FILE *hd_src = NULL;
  int hd;
  struct_stat file_info;
  CURLM *m = NULL;
  int running;

  FUNC19();

  if(!libtest_arg2) {
#ifdef LIB529
    /* test 529 */
    fprintf(stderr, "Usage: lib529 [url] [uploadfile]\n");
#else
    /* test 525 */
    FUNC11(stderr, "Usage: lib525 [url] [uploadfile]\n");
#endif
    return TEST_ERR_USAGE;
  }

  hd_src = FUNC10(libtest_arg2, "rb");
  if(NULL == hd_src) {
    FUNC11(stderr, "fopen failed with error: %d (%s)\n",
            errno, FUNC20(errno));
    FUNC11(stderr, "Error opening file: (%s)\n", libtest_arg2);
    return TEST_ERR_FOPEN;
  }

  /* get the file size of the local file */
  hd = FUNC12(FUNC9(hd_src), &file_info);
  if(hd == -1) {
    /* can't open file, bail out */
    FUNC11(stderr, "fstat() failed with error: %d (%s)\n",
            errno, FUNC20(errno));
    FUNC11(stderr, "ERROR: cannot open file (%s)\n", libtest_arg2);
    FUNC8(hd_src);
    return TEST_ERR_FSTAT;
  }

  FUNC17(CURL_GLOBAL_ALL);
  if(res) {
    FUNC8(hd_src);
    return res;
  }

  FUNC6(curl);

  /* enable uploading */
  FUNC7(curl, CURLOPT_UPLOAD, 1L);

  /* specify target */
  FUNC7(curl, CURLOPT_URL, URL);

  /* go verbose */
  FUNC7(curl, CURLOPT_VERBOSE, 1L);

  /* use active FTP */
  FUNC7(curl, CURLOPT_FTPPORT, "-");

  /* now specify which file to upload */
  FUNC7(curl, CURLOPT_READDATA, hd_src);

  /* NOTE: if you want this code to work on Windows with libcurl as a DLL, you
     MUST also provide a read callback with CURLOPT_READFUNCTION. Failing to
     do so will give you a crash since a DLL may not use the variable's memory
     when passed in to it from an app like this. */

  /* Set the size of the file to upload (optional).  If you give a *_LARGE
     option you MUST make sure that the type of the passed-in argument is a
     curl_off_t. If you use CURLOPT_INFILESIZE (without _LARGE) you must
     make sure that to pass in a type 'long' argument. */
  FUNC7(curl, CURLOPT_INFILESIZE_LARGE, (curl_off_t)file_info.st_size);

  FUNC15(m);

  FUNC13(m, curl);

  for(;;) {
    struct timeval interval;
    fd_set rd, wr, exc;
    int maxfd = -99;

    interval.tv_sec = 1;
    interval.tv_usec = 0;

    FUNC16(m, &running);

    FUNC1();

    if(!running)
      break; /* done */

    FUNC0(&rd);
    FUNC0(&wr);
    FUNC0(&exc);

    FUNC14(m, &rd, &wr, &exc, &maxfd);

    /* At this point, maxfd is guaranteed to be greater or equal than -1. */

    FUNC18(maxfd + 1, &rd, &wr, &exc, &interval);

    FUNC1();
  }

test_cleanup:

#ifdef LIB529
  /* test 529 */
  /* proper cleanup sequence - type PA */
  curl_multi_remove_handle(m, curl);
  curl_multi_cleanup(m);
  curl_easy_cleanup(curl);
  curl_global_cleanup();
#else
  /* test 525 */
  /* proper cleanup sequence - type PB */
  FUNC5(m, curl);
  FUNC2(curl);
  FUNC4(m);
  FUNC3();
#endif

  /* close the local file */
  FUNC8(hd_src);

  return res;
}