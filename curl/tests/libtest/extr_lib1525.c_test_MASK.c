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
struct curl_slist {int dummy; } ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_FAILED_INIT ; 
 scalar_t__ CURLE_OK ; 
 long CURLHEADER_UNIFIED ; 
 int /*<<< orphan*/  CURLOPT_HEADER ; 
 int /*<<< orphan*/  CURLOPT_HEADEROPT ; 
 int /*<<< orphan*/  CURLOPT_HTTPHEADER ; 
 int /*<<< orphan*/  CURLOPT_HTTPPROXYTUNNEL ; 
 int /*<<< orphan*/  CURLOPT_INFILESIZE ; 
 int /*<<< orphan*/  CURLOPT_POST ; 
 int /*<<< orphan*/  CURLOPT_PROXY ; 
 int /*<<< orphan*/  CURLOPT_PROXYHEADER ; 
 int /*<<< orphan*/  CURLOPT_PROXYTYPE ; 
 int /*<<< orphan*/  CURLOPT_READFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_UPLOAD ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURLOPT_WRITEFUNCTION ; 
 long CURLPROXY_HTTP ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct curl_slist* FUNC5 (struct curl_slist*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct curl_slist*) ; 
 int /*<<< orphan*/  data ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 long fwrite ; 
 long libtest_arg2 ; 
 long read_callback ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

int FUNC10(char *URL)
{
  CURL *curl = NULL;
  CURLcode res = CURLE_FAILED_INIT;
  /* http and proxy header list*/
  struct curl_slist *hhl = NULL;

  if(FUNC4(CURL_GLOBAL_ALL) != CURLE_OK) {
    FUNC7(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  curl = FUNC1();
  if(!curl) {
    FUNC7(stderr, "curl_easy_init() failed\n");
    FUNC3();
    return TEST_ERR_MAJOR_BAD;
  }

  hhl = FUNC5(hhl, "User-Agent: Http Agent");

  if(!hhl) {
    goto test_cleanup;
  }

  FUNC9(curl, CURLOPT_URL, URL);
  FUNC9(curl, CURLOPT_PROXY, libtest_arg2);
  FUNC9(curl, CURLOPT_HTTPHEADER, hhl);
  FUNC9(curl, CURLOPT_PROXYHEADER, hhl);
  FUNC9(curl, CURLOPT_HEADEROPT, CURLHEADER_UNIFIED);
  FUNC9(curl, CURLOPT_POST, 0L);
  FUNC9(curl, CURLOPT_UPLOAD, 1L);
  FUNC9(curl, CURLOPT_VERBOSE, 1L);
  FUNC9(curl, CURLOPT_PROXYTYPE, CURLPROXY_HTTP);
  FUNC9(curl, CURLOPT_HEADER, 1L);
  FUNC9(curl, CURLOPT_WRITEFUNCTION, fwrite);
  FUNC9(curl, CURLOPT_READFUNCTION, read_callback);
  FUNC9(curl, CURLOPT_HTTPPROXYTUNNEL, 1L);
  FUNC9(curl, CURLOPT_INFILESIZE, (long)FUNC8(data));

  res = FUNC2(curl);

test_cleanup:

  FUNC0(curl);

  FUNC6(hhl);

  FUNC3();

  return (int)res;
}