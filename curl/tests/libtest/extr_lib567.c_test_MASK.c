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
typedef  char curl_slist ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_HEADERDATA ; 
 int /*<<< orphan*/  CURLOPT_RTSPHEADER ; 
 int /*<<< orphan*/  CURLOPT_RTSP_REQUEST ; 
 int /*<<< orphan*/  CURLOPT_RTSP_STREAM_URI ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_USERAGENT ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 char* CURL_RTSPREQ_OPTIONS ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* stdout ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

int FUNC9(char *URL)
{
  CURLcode res;
  CURL *curl;
  struct curl_slist *custom_headers = NULL;

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

  /* Dump data to stdout for protocol verification */
  FUNC8(curl, CURLOPT_HEADERDATA, stdout);
  FUNC8(curl, CURLOPT_WRITEDATA, stdout);

  FUNC8(curl, CURLOPT_URL, URL);
  FUNC8(curl, CURLOPT_RTSP_STREAM_URI, URL);
  FUNC8(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_OPTIONS);
  FUNC8(curl, CURLOPT_USERAGENT, "test567");

  custom_headers = FUNC5(custom_headers, "Test-Number: 567");
  FUNC8(curl, CURLOPT_RTSPHEADER, custom_headers);

  res = FUNC2(curl);

test_cleanup:

  if(custom_headers)
    FUNC6(custom_headers);
  FUNC0(curl);
  FUNC3();

  return (int)res;
}