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
typedef  char curl_slist ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  curl_mimepart ;
typedef  char curl_mime ;
typedef  scalar_t__ CURLMcode ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLM_OK ; 
 int /*<<< orphan*/  CURLOPT_HTTPHEADER ; 
 int /*<<< orphan*/  CURLOPT_MIMEPOST ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_ZERO_TERMINATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,long*) ; 
 char* FUNC17 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 int FUNC21 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC22(void)
{
  CURL *curl;

  CURLM *multi_handle;
  int still_running = 0;

  curl_mime *form = NULL;
  curl_mimepart *field = NULL;
  struct curl_slist *headerlist = NULL;
  static const char buf[] = "Expect:";

  curl = FUNC3();
  multi_handle = FUNC14();

  if(curl && multi_handle) {
    /* Create the form */
    form = FUNC9(curl);

    /* Fill in the file upload field */
    field = FUNC5(form);
    FUNC10(field, "sendfile");
    FUNC7(field, "multi-post.c");

    /* Fill in the filename field */
    field = FUNC5(form);
    FUNC10(field, "filename");
    FUNC6(field, "multi-post.c", CURL_ZERO_TERMINATED);

    /* Fill in the submit field too, even if this is rarely needed */
    field = FUNC5(form);
    FUNC10(field, "submit");
    FUNC6(field, "send", CURL_ZERO_TERMINATED);

    /* initialize custom header list (stating that Expect: 100-continue is not
       wanted */
    headerlist = FUNC17(headerlist, buf);

    /* what URL that receives this POST */
    FUNC4(curl, CURLOPT_URL, "https://www.example.com/upload.cgi");
    FUNC4(curl, CURLOPT_VERBOSE, 1L);

    FUNC4(curl, CURLOPT_HTTPHEADER, headerlist);
    FUNC4(curl, CURLOPT_MIMEPOST, form);

    FUNC11(multi_handle, curl);

    FUNC15(multi_handle, &still_running);

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

      FUNC16(multi_handle, &curl_timeo);
      if(curl_timeo >= 0) {
        timeout.tv_sec = curl_timeo / 1000;
        if(timeout.tv_sec > 1)
          timeout.tv_sec = 1;
        else
          timeout.tv_usec = (curl_timeo % 1000) * 1000;
      }

      /* get file descriptors from the transfers */
      mc = FUNC13(multi_handle, &fdread, &fdwrite, &fdexcep, &maxfd);

      if(mc != CURLM_OK) {
        FUNC19(stderr, "curl_multi_fdset() failed, code %ld.\n", mc);
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
        rc = FUNC21(0, NULL, NULL, NULL, &wait);
#endif
      }
      else {
        /* Note that on some platforms 'timeout' may be modified by select().
           If you need access to the original value save a copy beforehand. */
        rc = FUNC21(maxfd + 1, &fdread, &fdwrite, &fdexcep, &timeout);
      }

      switch(rc) {
      case -1:
        /* select error */
        break;
      case 0:
      default:
        /* timeout or readable/writable sockets */
        FUNC20("perform!\n");
        FUNC15(multi_handle, &still_running);
        FUNC20("running: %d!\n", still_running);
        break;
      }
    }

    FUNC12(multi_handle);

    /* always cleanup */
    FUNC2(curl);

    /* then cleanup the form */
    FUNC8(form);

    /* free slist */
    FUNC18(headerlist);
  }
  return 0;
}