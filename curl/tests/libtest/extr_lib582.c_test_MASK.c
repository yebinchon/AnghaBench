#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ st_size; } ;
typedef  TYPE_2__ struct_stat ;
struct TYPE_8__ {int /*<<< orphan*/  sockets; } ;
struct TYPE_6__ {int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
struct timeval {int member_0; int tv_sec; int tv_usec; TYPE_3__ write; TYPE_3__ read; TYPE_1__ member_1; } ;
struct ReadWriteSockets {int member_0; int tv_sec; int tv_usec; TYPE_3__ write; TYPE_3__ read; TYPE_1__ member_1; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  scalar_t__ curl_socket_t ;
typedef  long curl_off_t ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLMOPT_SOCKETDATA ; 
 int /*<<< orphan*/  CURLMOPT_SOCKETFUNCTION ; 
 int /*<<< orphan*/  CURLMOPT_TIMERDATA ; 
 int /*<<< orphan*/  CURLMOPT_TIMERFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_INFILESIZE_LARGE ; 
 int /*<<< orphan*/  CURLOPT_READDATA ; 
 int /*<<< orphan*/  CURLOPT_SSH_PRIVATE_KEYFILE ; 
 int /*<<< orphan*/  CURLOPT_SSH_PUBLIC_KEYFILE ; 
 int /*<<< orphan*/  CURLOPT_SSL_VERIFYHOST ; 
 int /*<<< orphan*/  CURLOPT_UPLOAD ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_USERPWD ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_CSELECT_IN ; 
 int /*<<< orphan*/  CURL_CSELECT_OUT ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  CURL_SOCKET_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int TEST_ERR_FOPEN ; 
 int TEST_ERR_FSTAT ; 
 int TEST_ERR_MAJOR_BAD ; 
 int TEST_ERR_USAGE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 
 struct timeval* curlSocketCallback ; 
 struct timeval* curlTimerCallback ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC16 (struct timeval*) ; 
 char* libtest_arg2 ; 
 long libtest_arg3 ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct timeval*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*,int /*<<< orphan*/ *,scalar_t__*) ; 

int FUNC26(char *URL)
{
  int res = 0;
  CURL *curl = NULL;
  FILE *hd_src = NULL;
  int hd;
  struct_stat file_info;
  CURLM *m = NULL;
  struct ReadWriteSockets sockets = {{NULL, 0, 0}, {NULL, 0, 0}};
  struct timeval timeout = {-1, 0};
  int success = 0;

  FUNC23();

  if(!libtest_arg3) {
    FUNC13(stderr, "Usage: lib582 [url] [filename] [username]\n");
    return TEST_ERR_USAGE;
  }

  hd_src = FUNC12(libtest_arg2, "rb");
  if(NULL == hd_src) {
    FUNC13(stderr, "fopen() failed with error: %d (%s)\n",
            errno, FUNC24(errno));
    FUNC13(stderr, "Error opening file: (%s)\n", libtest_arg2);
    return TEST_ERR_FOPEN;
  }

  /* get the file size of the local file */
  hd = FUNC15(FUNC11(hd_src), &file_info);
  if(hd == -1) {
    /* can't open file, bail out */
    FUNC13(stderr, "fstat() failed with error: %d (%s)\n",
            errno, FUNC24(errno));
    FUNC13(stderr, "ERROR: cannot open file (%s)\n", libtest_arg2);
    FUNC10(hd_src);
    return TEST_ERR_FSTAT;
  }
  FUNC13(stderr, "Set to upload %d bytes\n", (int)file_info.st_size);

  FUNC21(CURL_GLOBAL_ALL);
  if(res) {
    FUNC10(hd_src);
    return res;
  }

  FUNC8(curl);

  /* enable uploading */
  FUNC9(curl, CURLOPT_UPLOAD, 1L);

  /* specify target */
  FUNC9(curl, CURLOPT_URL, URL);

  /* go verbose */
  FUNC9(curl, CURLOPT_VERBOSE, 1L);

  /* now specify which file to upload */
  FUNC9(curl, CURLOPT_READDATA, hd_src);

  FUNC9(curl, CURLOPT_USERPWD, libtest_arg3);
  FUNC9(curl, CURLOPT_SSH_PUBLIC_KEYFILE, "curl_client_key.pub");
  FUNC9(curl, CURLOPT_SSH_PRIVATE_KEYFILE, "curl_client_key");
  FUNC9(curl, CURLOPT_SSL_VERIFYHOST, 0L);

  FUNC9(curl, CURLOPT_INFILESIZE_LARGE, (curl_off_t)file_info.st_size);

  FUNC18(m);

  FUNC19(m, CURLMOPT_SOCKETFUNCTION, curlSocketCallback);
  FUNC19(m, CURLMOPT_SOCKETDATA, &sockets);

  FUNC19(m, CURLMOPT_TIMERFUNCTION, curlTimerCallback);
  FUNC19(m, CURLMOPT_TIMERDATA, &timeout);

  FUNC17(m, curl);

  while(!FUNC3(m, &success)) {
    fd_set readSet, writeSet;
    curl_socket_t maxFd = 0;
    struct timeval tv = {10, 0};

    FUNC0(&readSet);
    FUNC0(&writeSet);
    FUNC25(&sockets.read, &readSet, &maxFd);
    FUNC25(&sockets.write, &writeSet, &maxFd);

    if(timeout.tv_sec != -1) {
      int usTimeout = FUNC16(&timeout);
      tv.tv_sec = usTimeout / 1000000;
      tv.tv_usec = usTimeout % 1000000;
    }
    else if(maxFd <= 0) {
      tv.tv_sec = 0;
      tv.tv_usec = 100000;
    }

    FUNC22((int)maxFd, &readSet, &writeSet, NULL, &tv);

    /* Check the sockets for reading / writing */
    FUNC2(m, &sockets.read, &readSet, CURL_CSELECT_IN, "read");
    FUNC2(m, &sockets.write, &writeSet, CURL_CSELECT_OUT, "write");

    if(timeout.tv_sec != -1 && FUNC16(&timeout) == 0) {
      /* Curl's timer has elapsed. */
      FUNC20(m, CURL_SOCKET_TIMEOUT, 0, "timeout");
    }

    FUNC1();
  }

  if(!success) {
    FUNC13(stderr, "Error uploading file.\n");
    res = TEST_ERR_MAJOR_BAD;
  }

test_cleanup:

  /* proper cleanup sequence - type PB */

  FUNC7(m, curl);
  FUNC4(curl);
  FUNC6(m);
  FUNC5();

  /* close the local file */
  FUNC10(hd_src);

  /* free local memory */
  FUNC14(sockets.read.sockets);
  FUNC14(sockets.write.sockets);

  return res;
}