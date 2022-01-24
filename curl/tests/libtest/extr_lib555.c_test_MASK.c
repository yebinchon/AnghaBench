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
struct timeval {long tv_usec; scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int CURLAUTH_BASIC ; 
 int CURLAUTH_DIGEST ; 
 int CURLAUTH_NTLM ; 
 int /*<<< orphan*/  CURLOPT_HEADER ; 
 int /*<<< orphan*/  CURLOPT_IOCTLDATA ; 
 int /*<<< orphan*/  CURLOPT_IOCTLFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_POST ; 
 int /*<<< orphan*/  CURLOPT_POSTFIELDSIZE ; 
 int /*<<< orphan*/  CURLOPT_PROXY ; 
 int /*<<< orphan*/  CURLOPT_PROXYAUTH ; 
 int /*<<< orphan*/  CURLOPT_PROXYUSERPWD ; 
 int /*<<< orphan*/  CURLOPT_READDATA ; 
 int /*<<< orphan*/  CURLOPT_READFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 long ioctlcallback ; 
 long libtest_arg2 ; 
 long libtest_arg3 ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int*) ; 
 long readcallback ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uploadthis ; 

int FUNC17(char *URL)
{
  int res = 0;
  CURL *curl = NULL;
  int counter = 0;
  CURLM *m = NULL;
  int running = 1;

  FUNC15();

  FUNC8(CURL_GLOBAL_ALL);

  FUNC6(curl);

  FUNC7(curl, CURLOPT_URL, URL);
  FUNC7(curl, CURLOPT_VERBOSE, 1L);
  FUNC7(curl, CURLOPT_HEADER, 1L);

  /* read the POST data from a callback */
  FUNC7(curl, CURLOPT_IOCTLFUNCTION, ioctlcallback);
  FUNC7(curl, CURLOPT_IOCTLDATA, &counter);
  FUNC7(curl, CURLOPT_READFUNCTION, readcallback);
  FUNC7(curl, CURLOPT_READDATA, &counter);
  /* We CANNOT do the POST fine without setting the size (or choose
     chunked)! */
  FUNC7(curl, CURLOPT_POSTFIELDSIZE, (long)FUNC16(uploadthis));

  FUNC7(curl, CURLOPT_POST, 1L);
  FUNC7(curl, CURLOPT_PROXY, libtest_arg2);
  FUNC7(curl, CURLOPT_PROXYUSERPWD, libtest_arg3);
  FUNC7(curl, CURLOPT_PROXYAUTH,
                   (long) (CURLAUTH_NTLM | CURLAUTH_DIGEST | CURLAUTH_BASIC) );

  FUNC11(m);

  FUNC9(m, curl);

  while(running) {
    struct timeval timeout;
    fd_set fdread, fdwrite, fdexcep;
    int maxfd = -99;

    timeout.tv_sec = 0;
    timeout.tv_usec = 100000L; /* 100 ms */

    FUNC12(m, &running);

    FUNC1();

#ifdef TPF
    sleep(1); /* avoid ctl-10 dump */
#endif

    if(!running)
      break; /* done */

    FUNC0(&fdread);
    FUNC0(&fdwrite);
    FUNC0(&fdexcep);

    FUNC10(m, &fdread, &fdwrite, &fdexcep, &maxfd);

    /* At this point, maxfd is guaranteed to be greater or equal than -1. */

    FUNC13(maxfd + 1, &fdread, &fdwrite, &fdexcep, &timeout);

    FUNC1();
  }

test_cleanup:

  /* proper cleanup sequence - type PA */

  FUNC5(m, curl);
  FUNC4(m);
  FUNC2(curl);
  FUNC3();

  return res;
}