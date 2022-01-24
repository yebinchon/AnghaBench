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
struct timeval {int tv_sec; long tv_usec; int member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  scalar_t__ CURLMcode ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLM_OK ; 
 int /*<<< orphan*/  CURLOPT_DEBUGFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,long*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 long my_trace ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC14(void)
{
  CURL *http_handle;
  CURLM *multi_handle;

  int still_running = 0; /* keep number of running handles */

  http_handle = FUNC3();

  /* set the options (I left out a few, you'll get the point anyway) */
  FUNC4(http_handle, CURLOPT_URL, "https://www.example.com/");

  FUNC4(http_handle, CURLOPT_DEBUGFUNCTION, my_trace);
  FUNC4(http_handle, CURLOPT_VERBOSE, 1L);

  /* init a multi stack */
  multi_handle = FUNC8();

  /* add the individual transfers */
  FUNC5(multi_handle, http_handle);

  /* we start some action by calling perform right away */
  FUNC9(multi_handle, &still_running);

  while(still_running) {
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

    FUNC10(multi_handle, &curl_timeo);
    if(curl_timeo >= 0) {
      timeout.tv_sec = curl_timeo / 1000;
      if(timeout.tv_sec > 1)
        timeout.tv_sec = 1;
      else
        timeout.tv_usec = (curl_timeo % 1000) * 1000;
    }

    /* get file descriptors from the transfers */
    mc = FUNC7(multi_handle, &fdread, &fdwrite, &fdexcep, &maxfd);

    if(mc != CURLM_OK) {
      FUNC11(stderr, "curl_multi_fdset() failed, code %ld.\n", mc);
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
      rc = FUNC13(0, NULL, NULL, NULL, &wait);
#endif
    }
    else {
      /* Note that on some platforms 'timeout' may be modified by select().
         If you need access to the original value save a copy beforehand. */
      rc = FUNC13(maxfd + 1, &fdread, &fdwrite, &fdexcep, &timeout);
    }

    switch(rc) {
    case -1:
      /* select error */
      still_running = 0;
      FUNC12("select() returns error, this is badness\n");
      break;
    case 0:
    default:
      /* timeout or readable/writable sockets */
      FUNC9(multi_handle, &still_running);
      break;
    }
  }

  FUNC6(multi_handle);

  FUNC2(http_handle);

  return 0;
}