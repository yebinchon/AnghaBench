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
 int /*<<< orphan*/  CURLOPT_PASSWORD ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_USERNAME ; 
 int /*<<< orphan*/  CURL_GLOBAL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MULTI_PERFORM_HANG_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,long*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC15 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC16 (struct timeval,struct timeval) ; 
 struct timeval FUNC17 () ; 

int FUNC18(void)
{
  CURL *curl;
  CURLM *mcurl;
  int still_running = 1;
  struct timeval mp_start;

  FUNC6(CURL_GLOBAL_DEFAULT);

  curl = FUNC3();
  if(!curl)
    return 1;

  mcurl = FUNC10();
  if(!mcurl)
    return 2;

  /* Set username and password */
  FUNC4(curl, CURLOPT_USERNAME, "user");
  FUNC4(curl, CURLOPT_PASSWORD, "secret");

  /* This will retrieve message 1 from the user's mailbox */
  FUNC4(curl, CURLOPT_URL, "pop3://pop.example.com/1");

  /* Tell the multi stack about our easy handle */
  FUNC7(mcurl, curl);

  /* Record the start time which we can use later */
  mp_start = FUNC17();

  /* We start some action by calling perform right away */
  FUNC11(mcurl, &still_running);

  while(still_running) {
    struct timeval timeout;
    fd_set fdread;
    fd_set fdwrite;
    fd_set fdexcep;
    int maxfd = -1;
    int rc;
    CURLMcode mc; /* curl_multi_fdset() return code */

    long curl_timeo = -1;

    /* Initialise the file descriptors */
    FUNC0(&fdread);
    FUNC0(&fdwrite);
    FUNC0(&fdexcep);

    /* Set a suitable timeout to play around with */
    timeout.tv_sec = 1;
    timeout.tv_usec = 0;

    FUNC13(mcurl, &curl_timeo);
    if(curl_timeo >= 0) {
      timeout.tv_sec = curl_timeo / 1000;
      if(timeout.tv_sec > 1)
        timeout.tv_sec = 1;
      else
        timeout.tv_usec = (curl_timeo % 1000) * 1000;
    }

    /* get file descriptors from the transfers */
    mc = FUNC9(mcurl, &fdread, &fdwrite, &fdexcep, &maxfd);

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
      rc = FUNC15(0, NULL, NULL, NULL, &wait);
#endif
    }
    else {
      /* Note that on some platforms 'timeout' may be modified by select().
         If you need access to the original value save a copy beforehand. */
      rc = FUNC15(maxfd + 1, &fdread, &fdwrite, &fdexcep, &timeout);
    }

    if(FUNC16(FUNC17(), mp_start) > MULTI_PERFORM_HANG_TIMEOUT) {
      FUNC14(stderr,
              "ABORTING: Since it seems that we would have run forever.\n");
      break;
    }

    switch(rc) {
    case -1:  /* select error */
      break;
    case 0:   /* timeout */
    default:  /* action */
      FUNC11(mcurl, &still_running);
      break;
    }
  }

  /* Always cleanup */
  FUNC12(mcurl, curl);
  FUNC8(mcurl);
  FUNC2(curl);
  FUNC5();

  return 0;
}