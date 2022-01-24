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
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLE_RTSP_CSEQ_ERROR ; 
 int CURLE_RTSP_SESSION_ERROR ; 
 int /*<<< orphan*/  CURLOPT_HEADERDATA ; 
 int /*<<< orphan*/  CURLOPT_RTSP_CLIENT_CSEQ ; 
 int /*<<< orphan*/  CURLOPT_RTSP_REQUEST ; 
 int /*<<< orphan*/  CURLOPT_RTSP_STREAM_URI ; 
 int /*<<< orphan*/  CURLOPT_RTSP_TRANSPORT ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 char* CURL_RTSPREQ_OPTIONS ; 
 char* CURL_RTSPREQ_PLAY ; 
 char* CURL_RTSPREQ_SETUP ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* stdout ; 
 char* FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

int FUNC9(char *URL)
{
  int res;
  CURL *curl;
  int request = 1;
  char *stream_uri = NULL;

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

  FUNC8(curl, CURLOPT_HEADERDATA, stdout);
  FUNC8(curl, CURLOPT_WRITEDATA, stdout);
  FUNC8(curl, CURLOPT_VERBOSE, 1L);

  FUNC8(curl, CURLOPT_URL, URL);

  FUNC8(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_OPTIONS);

  stream_uri = FUNC7(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  FUNC8(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  FUNC6(stream_uri);
  stream_uri = NULL;

  res = FUNC2(curl);
  if(res != (int)CURLE_RTSP_CSEQ_ERROR) {
    FUNC5(stderr, "Failed to detect CSeq mismatch");
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }

  FUNC8(curl, CURLOPT_RTSP_CLIENT_CSEQ, 999L);
  FUNC8(curl, CURLOPT_RTSP_TRANSPORT,
                    "RAW/RAW/UDP;unicast;client_port=3056-3057");
  FUNC8(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_SETUP);

  stream_uri = FUNC7(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  FUNC8(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  FUNC6(stream_uri);
  stream_uri = NULL;

  res = FUNC2(curl);
  if(res)
    goto test_cleanup;

  FUNC8(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_PLAY);

  stream_uri = FUNC7(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  FUNC8(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  FUNC6(stream_uri);
  stream_uri = NULL;

  res = FUNC2(curl);
  if(res != CURLE_RTSP_SESSION_ERROR) {
    FUNC5(stderr, "Failed to detect a Session ID mismatch");
  }

test_cleanup:
  FUNC6(stream_uri);

  FUNC0(curl);
  FUNC3();

  return res;
}