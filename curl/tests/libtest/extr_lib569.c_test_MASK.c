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
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_BAD_FUNCTION_ARGUMENT ; 
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLINFO_RTSP_SESSION_ID ; 
 int /*<<< orphan*/  CURLOPT_HEADERDATA ; 
 int /*<<< orphan*/  CURLOPT_RTSP_REQUEST ; 
 int /*<<< orphan*/  CURLOPT_RTSP_SESSION_ID ; 
 int /*<<< orphan*/  CURLOPT_RTSP_STREAM_URI ; 
 int /*<<< orphan*/  CURLOPT_RTSP_TRANSPORT ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 char* CURL_RTSPREQ_SETUP ; 
 char* CURL_RTSPREQ_TEARDOWN ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  libtest_arg2 ; 
 int /*<<< orphan*/  stderr ; 
 char* stdout ; 
 char* FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

int FUNC12(char *URL)
{
  int res;
  CURL *curl;
  char *stream_uri = NULL;
  char *rtsp_session_id;
  int request = 1;
  int i;

  FILE *idfile = FUNC7(libtest_arg2, "wb");
  if(idfile == NULL) {
    FUNC8(&stderr, "couldn't open the Session ID File\n");
    return TEST_ERR_MAJOR_BAD;
  }

  if(FUNC5(CURL_GLOBAL_ALL) != CURLE_OK) {
    FUNC8(&stderr, "curl_global_init() failed\n");
    FUNC6(idfile);
    return TEST_ERR_MAJOR_BAD;
  }

  curl = FUNC2();
  if(!curl) {
    FUNC8(&stderr, "curl_easy_init() failed\n");
    FUNC4();
    FUNC6(idfile);
    return TEST_ERR_MAJOR_BAD;
  }

  FUNC11(curl, CURLOPT_HEADERDATA, stdout);
  FUNC11(curl, CURLOPT_WRITEDATA, stdout);
  FUNC11(curl, CURLOPT_VERBOSE, 1L);

  FUNC11(curl, CURLOPT_URL, URL);

  FUNC11(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_SETUP);
  res = FUNC3(curl);
  if(res != (int)CURLE_BAD_FUNCTION_ARGUMENT) {
    FUNC8(&stderr, "This should have failed. "
            "Cannot setup without a Transport: header");
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }

  /* Go through the various Session IDs */
  for(i = 0; i < 3; i++) {
    stream_uri = FUNC10(URL, request++);
    if(!stream_uri) {
      res = TEST_ERR_MAJOR_BAD;
      goto test_cleanup;
    }
    FUNC11(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
    FUNC9(stream_uri);
    stream_uri = NULL;

    FUNC11(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_SETUP);
    FUNC11(curl, CURLOPT_RTSP_TRANSPORT,
                "Fake/NotReal/JustATest;foo=baz");
    res = FUNC3(curl);
    if(res)
      goto test_cleanup;

    FUNC1(curl, CURLINFO_RTSP_SESSION_ID, &rtsp_session_id);
    FUNC8(idfile, "Got Session ID: [%s]\n", rtsp_session_id);
    rtsp_session_id = NULL;

    stream_uri = FUNC10(URL, request++);
    if(!stream_uri) {
      res = TEST_ERR_MAJOR_BAD;
      goto test_cleanup;
    }
    FUNC11(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
    FUNC9(stream_uri);
    stream_uri = NULL;

    FUNC11(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_TEARDOWN);
    res = FUNC3(curl);

    /* Clear for the next go-round */
    FUNC11(curl, CURLOPT_RTSP_SESSION_ID, NULL);
  }

test_cleanup:

  if(idfile)
    FUNC6(idfile);

  FUNC9(stream_uri);
  FUNC0(curl);
  FUNC4();

  return res;
}