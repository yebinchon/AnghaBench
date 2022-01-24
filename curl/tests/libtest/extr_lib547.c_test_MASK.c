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
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int CURLAUTH_BASIC ; 
 int CURLAUTH_DIGEST ; 
 int CURLAUTH_NTLM ; 
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_HEADER ; 
 int /*<<< orphan*/  CURLOPT_IOCTLDATA ; 
 int /*<<< orphan*/  CURLOPT_IOCTLFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_POST ; 
 int /*<<< orphan*/  CURLOPT_POSTFIELDS ; 
 int /*<<< orphan*/  CURLOPT_POSTFIELDSIZE ; 
 int /*<<< orphan*/  CURLOPT_PROXY ; 
 int /*<<< orphan*/  CURLOPT_PROXYAUTH ; 
 int /*<<< orphan*/  CURLOPT_PROXYUSERPWD ; 
 int /*<<< orphan*/  CURLOPT_READDATA ; 
 int /*<<< orphan*/  CURLOPT_READFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int TEST_ERR_MAJOR_BAD ; 
 long UPLOADTHIS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 long ioctlcallback ; 
 long libtest_arg2 ; 
 long libtest_arg3 ; 
 long readcallback ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC6 (long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

int FUNC8(char *URL)
{
  CURLcode res;
  CURL *curl;
#ifndef LIB548
  int counter = 0;
#endif

  if(FUNC4(CURL_GLOBAL_ALL) != CURLE_OK) {
    FUNC5(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  curl = FUNC1();
  if(!curl) {
    FUNC5(stderr, "curl_easy_init() failed\n");
    FUNC3();
    return TEST_ERR_MAJOR_BAD;
  }

  FUNC7(curl, CURLOPT_URL, URL);
  FUNC7(curl, CURLOPT_VERBOSE, 1L);
  FUNC7(curl, CURLOPT_HEADER, 1L);
#ifdef LIB548
  /* set the data to POST with a mere pointer to a zero-terminated string */
  test_setopt(curl, CURLOPT_POSTFIELDS, UPLOADTHIS);
#else
  /* 547 style, which means reading the POST data from a callback */
  FUNC7(curl, CURLOPT_IOCTLFUNCTION, ioctlcallback);
  FUNC7(curl, CURLOPT_IOCTLDATA, &counter);
  FUNC7(curl, CURLOPT_READFUNCTION, readcallback);
  FUNC7(curl, CURLOPT_READDATA, &counter);
  /* We CANNOT do the POST fine without setting the size (or choose
     chunked)! */
  FUNC7(curl, CURLOPT_POSTFIELDSIZE, (long)FUNC6(UPLOADTHIS));
#endif
  FUNC7(curl, CURLOPT_POST, 1L);
  FUNC7(curl, CURLOPT_PROXY, libtest_arg2);
  FUNC7(curl, CURLOPT_PROXYUSERPWD, libtest_arg3);
  FUNC7(curl, CURLOPT_PROXYAUTH,
                   (long) (CURLAUTH_NTLM | CURLAUTH_DIGEST | CURLAUTH_BASIC) );

  res = FUNC2(curl);

test_cleanup:

  FUNC0(curl);
  FUNC3();

  return (int)res;
}