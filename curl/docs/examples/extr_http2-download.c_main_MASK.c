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
struct transfer {int /*<<< orphan*/  easy; } ;
struct timeval {int tv_sec; long tv_usec; int member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  scalar_t__ CURLMcode ;
typedef  int /*<<< orphan*/  CURLM ;

/* Variables and functions */
 int /*<<< orphan*/  CURLMOPT_PIPELINING ; 
 scalar_t__ CURLM_OK ; 
 int /*<<< orphan*/  CURLPIPE_MULTIPLEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int NUM_HANDLES ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,long*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC13 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC14 (struct transfer*,int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC15(int argc, char **argv)
{
  struct transfer trans[NUM_HANDLES];
  CURLM *multi_handle;
  int i;
  int still_running = 0; /* keep number of running handles */
  int num_transfers;
  if(argc > 1) {
    /* if given a number, do that many transfers */
    num_transfers = FUNC2(argv[1]);
    if((num_transfers < 1) || (num_transfers > NUM_HANDLES))
      num_transfers = 3; /* a suitable low default */
  }
  else
    num_transfers = 3; /* suitable default */

  /* init a multi stack */
  multi_handle = FUNC7();

  for(i = 0; i < num_transfers; i++) {
    FUNC14(&trans[i], i);

    /* add the individual transfer */
    FUNC4(multi_handle, trans[i].easy);
  }

  FUNC10(multi_handle, CURLMOPT_PIPELINING, CURLPIPE_MULTIPLEX);

  /* we start some action by calling perform right away */
  FUNC8(multi_handle, &still_running);

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

    FUNC11(multi_handle, &curl_timeo);
    if(curl_timeo >= 0) {
      timeout.tv_sec = curl_timeo / 1000;
      if(timeout.tv_sec > 1)
        timeout.tv_sec = 1;
      else
        timeout.tv_usec = (curl_timeo % 1000) * 1000;
    }

    /* get file descriptors from the transfers */
    mc = FUNC6(multi_handle, &fdread, &fdwrite, &fdexcep, &maxfd);

    if(mc != CURLM_OK) {
      FUNC12(stderr, "curl_multi_fdset() failed, code %ld.\n", mc);
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
      break;
    case 0:
    default:
      /* timeout or readable/writable sockets */
      FUNC8(multi_handle, &still_running);
      break;
    }
  }

  for(i = 0; i < num_transfers; i++) {
    FUNC9(multi_handle, trans[i].easy);
    FUNC3(trans[i].easy);
  }

  FUNC5(multi_handle);

  return 0;
}