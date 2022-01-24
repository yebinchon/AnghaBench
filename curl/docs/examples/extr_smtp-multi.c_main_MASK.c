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
struct upload_status {scalar_t__ lines_read; } ;
struct timeval {int tv_sec; long tv_usec; int member_1; int /*<<< orphan*/  member_0; } ;
struct curl_slist {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  scalar_t__ CURLMcode ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CC ; 
 scalar_t__ CURLM_OK ; 
 int /*<<< orphan*/  CURLOPT_MAIL_FROM ; 
 int /*<<< orphan*/  CURLOPT_MAIL_RCPT ; 
 int /*<<< orphan*/  CURLOPT_READDATA ; 
 int /*<<< orphan*/  CURLOPT_READFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_UPLOAD ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURL_GLOBAL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 long FROM ; 
 scalar_t__ MULTI_PERFORM_HANG_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  TO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,long*) ; 
 struct curl_slist* FUNC14 (struct curl_slist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct curl_slist*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 long payload_source ; 
 int FUNC17 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC18 (struct timeval,struct timeval) ; 
 struct timeval FUNC19 () ; 

int FUNC20(void)
{
  CURL *curl;
  CURLM *mcurl;
  int still_running = 1;
  struct timeval mp_start;
  struct curl_slist *recipients = NULL;
  struct upload_status upload_ctx;

  upload_ctx.lines_read = 0;

  FUNC6(CURL_GLOBAL_DEFAULT);

  curl = FUNC3();
  if(!curl)
    return 1;

  mcurl = FUNC10();
  if(!mcurl)
    return 2;

  /* This is the URL for your mailserver */
  FUNC4(curl, CURLOPT_URL, "smtp://mail.example.com");

  /* Note that this option isn't strictly required, omitting it will result in
   * libcurl sending the MAIL FROM command with empty sender data. All
   * autoresponses should have an empty reverse-path, and should be directed
   * to the address in the reverse-path which triggered them. Otherwise, they
   * could cause an endless loop. See RFC 5321 Section 4.5.5 for more details.
   */
  FUNC4(curl, CURLOPT_MAIL_FROM, FROM);

  /* Add two recipients, in this particular case they correspond to the
   * To: and Cc: addressees in the header, but they could be any kind of
   * recipient. */
  recipients = FUNC14(recipients, TO);
  recipients = FUNC14(recipients, CC);
  FUNC4(curl, CURLOPT_MAIL_RCPT, recipients);

  /* We're using a callback function to specify the payload (the headers and
   * body of the message). You could just use the CURLOPT_READDATA option to
   * specify a FILE pointer to read from. */
  FUNC4(curl, CURLOPT_READFUNCTION, payload_source);
  FUNC4(curl, CURLOPT_READDATA, &upload_ctx);
  FUNC4(curl, CURLOPT_UPLOAD, 1L);

  /* Tell the multi stack about our easy handle */
  FUNC7(mcurl, curl);

  /* Record the start time which we can use later */
  mp_start = FUNC19();

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
      FUNC16(stderr, "curl_multi_fdset() failed, code %ld.\n", mc);
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

    if(FUNC18(FUNC19(), mp_start) > MULTI_PERFORM_HANG_TIMEOUT) {
      FUNC16(stderr,
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

  /* Free the list of recipients */
  FUNC15(recipients);

  /* Always cleanup */
  FUNC12(mcurl, curl);
  FUNC8(mcurl);
  FUNC2(curl);
  FUNC5();

  return 0;
}