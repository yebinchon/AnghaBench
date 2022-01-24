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
struct timeval {int tv_sec; long tv_usec; int member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  char* curl_off_t ;
struct TYPE_4__ {int result; } ;
struct TYPE_5__ {scalar_t__ msg; TYPE_1__ data; } ;
typedef  TYPE_2__ CURLMsg ;
typedef  scalar_t__ CURLMcode ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int CURLE_OK ; 
 scalar_t__ CURLMSG_DONE ; 
 scalar_t__ CURLM_OK ; 
 int /*<<< orphan*/  CURLOPT_POSTFIELDS ; 
 int /*<<< orphan*/  CURLOPT_POSTFIELDSIZE_LARGE ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,long*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int) ; 
 int FUNC17 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  stderr ; 
 char* testData ; 
 scalar_t__ testDataSize ; 

int FUNC19(char *URL)
{
  CURL *easy;
  CURLM *multi_handle;
  int still_running; /* keep number of running handles */
  CURLMsg *msg; /* for picking up messages with the transfer status */
  int msgs_left; /* how many messages are left */
  int res = CURLE_OK;

  FUNC18();

  FUNC15(CURL_GLOBAL_ALL);

  /* Allocate one CURL handle per transfer */
  easy = FUNC4();

  /* init a multi stack */
  multi_handle = FUNC11();

  /* add the individual transfer */
  FUNC7(multi_handle, easy);

  /* set the options (I left out a few, you'll get the point anyway) */
  FUNC5(easy, CURLOPT_URL, URL);
  FUNC5(easy, CURLOPT_POSTFIELDSIZE_LARGE,
                   (curl_off_t)testDataSize);
  FUNC5(easy, CURLOPT_POSTFIELDS, testData);

  /* we start some action by calling perform right away */
  FUNC12(multi_handle, &still_running);

  FUNC2();

  do {
    struct timeval timeout;
    int rc; /* select() return code */
    CURLMcode mc; /* curl_multi_fdset() return code */

    fd_set fdread;
    fd_set fdwrite;
    fd_set fdexcep;
    int maxfd = -1;

    long curl_timeo = -1;

    FUNC0(&fdread);
    FUNC0(&fdwrite);
    FUNC0(&fdexcep);

    /* set a suitable timeout to play around with */
    timeout.tv_sec = 1;
    timeout.tv_usec = 0;

    FUNC13(multi_handle, &curl_timeo);
    if(curl_timeo >= 0) {
      timeout.tv_sec = curl_timeo / 1000;
      if(timeout.tv_sec > 1)
        timeout.tv_sec = 1;
      else
        timeout.tv_usec = (curl_timeo % 1000) * 1000;
    }

    /* get file descriptors from the transfers */
    mc = FUNC9(multi_handle, &fdread, &fdwrite, &fdexcep, &maxfd);

    if(mc != CURLM_OK) {
      FUNC14(stderr, "curl_multi_fdset() failed, code %ld.\n", mc);
      break;
    }

    /* On success the value of maxfd is guaranteed to be >= -1. We call
       select(maxfd + 1, ...); specially in case of (maxfd == -1) there are
       no fds ready yet so we call select(0, ...) --or Sleep() on Windows--
       to sleep 100ms, which is the minimum suggested value in the
       curl_multi_fdset() doc. */

    if(maxfd == -1) {
#ifdef _WIN32
      Sleep(100);
      rc = 0;
#else
      /* Portable sleep for platforms other than Windows. */
      struct timeval wait = { 0, 100 * 1000 }; /* 100ms */
      rc = FUNC17(0, NULL, NULL, NULL, &wait);
#endif
    }
    else {
      /* Note that on some platforms 'timeout' may be modified by select().
         If you need access to the original value save a copy beforehand. */
      rc = FUNC17(maxfd + 1, &fdread, &fdwrite, &fdexcep, &timeout);
    }

    switch(rc) {
    case -1:
      /* select error */
      break;
    case 0: /* timeout */
    default: /* action */
      FUNC12(multi_handle, &still_running);
      break;
    }

    FUNC2();
  } while(still_running);

  /* See how the transfers went */
  do {
    msg = FUNC10(multi_handle, &msgs_left);
    if(msg && msg->msg == CURLMSG_DONE) {
      FUNC16("HTTP transfer completed with status %d\n", msg->data.result);
      break;
    }

    FUNC2();
  } while(msg);

test_cleanup:
  FUNC8(multi_handle);

  /* Free the CURL handles */
  FUNC3(easy);
  FUNC6();

  return res;
}