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
struct timeval {int tv_sec; long tv_usec; } ;
struct curl_slist {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_MAIL_FROM ; 
 int /*<<< orphan*/  CURLOPT_MAIL_RCPT ; 
 int /*<<< orphan*/  CURLOPT_PASSWORD ; 
 int /*<<< orphan*/  CURLOPT_READFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_UPLOAD ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_USERNAME ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 long MAILFROM ; 
 scalar_t__ MULTI_PERFORM_HANG_TIMEOUT ; 
 long PASSWORD ; 
 int /*<<< orphan*/  RECIPIENT ; 
 long USERNAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,long*) ; 
 struct curl_slist* FUNC10 (struct curl_slist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct curl_slist*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 long read_callback ; 
 int FUNC16 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC17 (struct timeval,struct timeval) ; 
 struct timeval FUNC18 () ; 

int FUNC19(char *URL)
{
   int res = 0;
   CURL *curl = NULL;
   CURLM *mcurl = NULL;
   int still_running = 1;
   struct timeval mp_start;
   struct curl_slist *rcpt_list = NULL;

   FUNC4(CURL_GLOBAL_DEFAULT);

   FUNC12(curl);

   FUNC15(mcurl);

   rcpt_list = FUNC10(rcpt_list, RECIPIENT);
   /* more addresses can be added here
      rcpt_list = curl_slist_append(rcpt_list, "<others@example.com>");
   */

   FUNC2(curl, CURLOPT_URL, URL);
#if 0
   curl_easy_setopt(curl, CURLOPT_USERNAME, USERNAME);
   curl_easy_setopt(curl, CURLOPT_PASSWORD, PASSWORD);
#endif
   FUNC2(curl, CURLOPT_UPLOAD, 1L);
   FUNC2(curl, CURLOPT_READFUNCTION, read_callback);
   FUNC2(curl, CURLOPT_MAIL_FROM, MAILFROM);
   FUNC2(curl, CURLOPT_MAIL_RCPT, rcpt_list);
   FUNC2(curl, CURLOPT_VERBOSE, 1L);
   FUNC14(mcurl, curl);

   mp_start = FUNC18();

  /* we start some action by calling perform right away */
  FUNC7(mcurl, &still_running);

  while(still_running) {
    struct timeval timeout;
    int rc; /* select() return code */

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

    FUNC9(mcurl, &curl_timeo);
    if(curl_timeo >= 0) {
      timeout.tv_sec = curl_timeo / 1000;
      if(timeout.tv_sec > 1)
        timeout.tv_sec = 1;
      else
        timeout.tv_usec = (curl_timeo % 1000) * 1000;
    }

    /* get file descriptors from the transfers */
    FUNC6(mcurl, &fdread, &fdwrite, &fdexcep, &maxfd);

    /* In a real-world program you OF COURSE check the return code of the
       function calls.  On success, the value of maxfd is guaranteed to be
       greater or equal than -1.  We call select(maxfd + 1, ...), specially in
       case of (maxfd == -1), we call select(0, ...), which is basically equal
       to sleep. */

    rc = FUNC16(maxfd + 1, &fdread, &fdwrite, &fdexcep, &timeout);

    if(FUNC17(FUNC18(), mp_start) > MULTI_PERFORM_HANG_TIMEOUT) {
      FUNC13(stderr, "ABORTING TEST, since it seems "
              "that it would have run forever.\n");
      break;
    }

    switch(rc) {
    case -1:
      /* select error */
      break;
    case 0: /* timeout */
    default: /* action */
      FUNC7(mcurl, &still_running);
      break;
    }
  }

test_cleanup:

  FUNC11(rcpt_list);
  FUNC8(mcurl, curl);
  FUNC5(mcurl);
  FUNC1(curl);
  FUNC3();

  return res;
}