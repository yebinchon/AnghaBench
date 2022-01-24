#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_sec; int tv_usec; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_4__ {int result; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_2__ CURLMsg ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_ACCEPTTIMEOUT_MS ; 
 int /*<<< orphan*/  CURLOPT_FTPPORT ; 
 int /*<<< orphan*/  CURLOPT_READDATA ; 
 int /*<<< orphan*/  CURLOPT_UPLOAD ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int INT_MAX ; 
 int TEST_ERR_FOPEN ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  libtest_arg2 ; 
 char* libtest_arg3 ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,long*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC19 (int) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int FUNC21(char *URL)
{
  CURL *easy = NULL;
  CURLM *multi = NULL;
  int res = 0;
  int running;
  int msgs_left;
  CURLMsg *msg;
  FILE *upload = NULL;

  FUNC18();

  upload = FUNC9(libtest_arg3, "rb");
  if(!upload) {
    FUNC10(stderr, "fopen() failed with error: %d (%s)\n",
            errno, FUNC19(errno));
    FUNC10(stderr, "Error opening file: (%s)\n", libtest_arg3);
    return TEST_ERR_FOPEN;
  }

  FUNC16(CURL_GLOBAL_ALL);
  if(res) {
    FUNC8(upload);
    return res;
  }

  FUNC6(easy);

  /* go verbose */
  FUNC7(easy, CURLOPT_VERBOSE, 1L);

  /* specify target */
  FUNC7(easy, CURLOPT_URL, URL);

  /* enable uploading */
  FUNC7(easy, CURLOPT_UPLOAD, 1L);

  /* data pointer for the file read function */
  FUNC7(easy, CURLOPT_READDATA, upload);

  /* use active mode FTP */
  FUNC7(easy, CURLOPT_FTPPORT, "-");

  /* server connection timeout */
  FUNC7(easy, CURLOPT_ACCEPTTIMEOUT_MS,
              FUNC20(libtest_arg2, NULL, 10)*1000);

  FUNC13(multi);

  FUNC11(multi, easy);

  for(;;) {
    struct timeval interval;
    fd_set fdread;
    fd_set fdwrite;
    fd_set fdexcep;
    long timeout = -99;
    int maxfd = -99;

    FUNC14(multi, &running);

    FUNC1();

    if(!running)
      break; /* done */

    FUNC0(&fdread);
    FUNC0(&fdwrite);
    FUNC0(&fdexcep);

    FUNC12(multi, &fdread, &fdwrite, &fdexcep, &maxfd);

    /* At this point, maxfd is guaranteed to be greater or equal than -1. */

    FUNC15(multi, &timeout);

    /* At this point, timeout is guaranteed to be greater or equal than -1. */

    if(timeout != -1L) {
      int itimeout = (timeout > (long)INT_MAX) ? INT_MAX : (int)timeout;
      interval.tv_sec = itimeout/1000;
      interval.tv_usec = (itimeout%1000)*1000;
    }
    else {
      interval.tv_sec = 0;
      interval.tv_usec = 100000L; /* 100 ms */
    }

    FUNC17(maxfd + 1, &fdread, &fdwrite, &fdexcep, &interval);

    FUNC1();
  }

  msg = FUNC5(multi, &msgs_left);
  if(msg)
    res = msg->data.result;

test_cleanup:

  /* undocumented cleanup sequence - type UA */

  FUNC4(multi);
  FUNC2(easy);
  FUNC3();

  /* close the local file */
  FUNC8(upload);

  return res;
}