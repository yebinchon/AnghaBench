#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timeval {long tv_usec; scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_2__ {int nohex; int tracetime; } ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLINFO_CONNECT_TIME ; 
 int /*<<< orphan*/  CURLOPT_DEBUGDATA ; 
 int /*<<< orphan*/  CURLOPT_DEBUGFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_HEADER ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,double,double) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 long libtest_debug_cb ; 
 TYPE_1__ libtest_debug_config ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  stderr ; 

int FUNC17(char *URL)
{
  CURL *c = NULL;
  CURLM *m = NULL;
  int res = 0;
  int running = 1;
  double connect_time = 0.0;
  double dbl_epsilon;

  dbl_epsilon = 1.0;
  do {
    dbl_epsilon /= 2.0;
  } while((double)(1.0 + (dbl_epsilon/2.0)) > (double)1.0);

  FUNC16();

  FUNC10(CURL_GLOBAL_ALL);

  FUNC7(c);

  FUNC8(c, CURLOPT_HEADER, 1L);
  FUNC8(c, CURLOPT_URL, URL);

  libtest_debug_config.nohex = 1;
  libtest_debug_config.tracetime = 1;
  FUNC8(c, CURLOPT_DEBUGDATA, &libtest_debug_config);
  FUNC8(c, CURLOPT_DEBUGFUNCTION, libtest_debug_cb);
  FUNC8(c, CURLOPT_VERBOSE, 1L);

  FUNC13(m);

  FUNC11(m, c);

  while(running) {
    struct timeval timeout;
    fd_set fdread, fdwrite, fdexcep;
    int maxfd = -99;

    timeout.tv_sec = 0;
    timeout.tv_usec = 100000L; /* 100 ms */

    FUNC14(m, &running);

    FUNC1();

    if(!running)
      break; /* done */

    FUNC0(&fdread);
    FUNC0(&fdwrite);
    FUNC0(&fdexcep);

    FUNC12(m, &fdread, &fdwrite, &fdexcep, &maxfd);

    /* At this point, maxfd is guaranteed to be greater or equal than -1. */

    FUNC15(maxfd + 1, &fdread, &fdwrite, &fdexcep, &timeout);

    FUNC1();
  }

  FUNC3(c, CURLINFO_CONNECT_TIME, &connect_time);
  if(connect_time < dbl_epsilon) {
    FUNC9(stderr, "connect time %e is < epsilon %e\n",
            connect_time, dbl_epsilon);
    res = TEST_ERR_MAJOR_BAD;
  }

test_cleanup:

  /* proper cleanup sequence - type PA */

  FUNC6(m, c);
  FUNC5(m);
  FUNC2(c);
  FUNC4();

  return res;
}