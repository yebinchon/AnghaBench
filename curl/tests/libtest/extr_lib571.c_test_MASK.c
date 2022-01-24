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
typedef  char FILE ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_INTERLEAVEFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_RTSP_REQUEST ; 
 int /*<<< orphan*/  CURLOPT_RTSP_STREAM_URI ; 
 int /*<<< orphan*/  CURLOPT_RTSP_TRANSPORT ; 
 int /*<<< orphan*/  CURLOPT_TIMEOUT ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 char* CURL_RTSPREQ_DESCRIBE ; 
 char* CURL_RTSPREQ_PLAY ; 
 char* CURL_RTSPREQ_RECEIVE ; 
 char* CURL_RTSPREQ_SETUP ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  libtest_arg2 ; 
 int rtp_packet_count ; 
 char* rtp_write ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

int FUNC11(char *URL)
{
  int res;
  CURL *curl;
  char *stream_uri = NULL;
  int request = 1;

  FILE *protofile = FUNC6(libtest_arg2, "wb");
  if(protofile == NULL) {
    FUNC7(stderr, "Couldn't open the protocol dump file\n");
    return TEST_ERR_MAJOR_BAD;
  }

  if(FUNC4(CURL_GLOBAL_ALL) != CURLE_OK) {
    FUNC7(stderr, "curl_global_init() failed\n");
    FUNC5(protofile);
    return TEST_ERR_MAJOR_BAD;
  }

  curl = FUNC1();
  if(!curl) {
    FUNC7(stderr, "curl_easy_init() failed\n");
    FUNC5(protofile);
    FUNC3();
    return TEST_ERR_MAJOR_BAD;
  }
  FUNC10(curl, CURLOPT_URL, URL);

  stream_uri = FUNC9(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  FUNC10(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  FUNC8(stream_uri);
  stream_uri = NULL;

  FUNC10(curl, CURLOPT_INTERLEAVEFUNCTION, rtp_write);
  FUNC10(curl, CURLOPT_TIMEOUT, 3L);
  FUNC10(curl, CURLOPT_VERBOSE, 1L);
  FUNC10(curl, CURLOPT_WRITEDATA, protofile);

  FUNC10(curl, CURLOPT_RTSP_TRANSPORT, "RTP/AVP/TCP;interleaved=0-1");
  FUNC10(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_SETUP);

  res = FUNC2(curl);
  if(res)
    goto test_cleanup;

  /* This PLAY starts the interleave */
  stream_uri = FUNC9(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  FUNC10(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  FUNC8(stream_uri);
  stream_uri = NULL;
  FUNC10(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_PLAY);

  res = FUNC2(curl);
  if(res)
    goto test_cleanup;

  /* The DESCRIBE request will try to consume data after the Content */
  stream_uri = FUNC9(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  FUNC10(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  FUNC8(stream_uri);
  stream_uri = NULL;
  FUNC10(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_DESCRIBE);

  res = FUNC2(curl);
  if(res)
    goto test_cleanup;

  stream_uri = FUNC9(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  FUNC10(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  FUNC8(stream_uri);
  stream_uri = NULL;
  FUNC10(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_PLAY);

  res = FUNC2(curl);
  if(res)
    goto test_cleanup;

  FUNC7(stderr, "PLAY COMPLETE\n");

  /* Use Receive to get the rest of the data */
  while(!res && rtp_packet_count < 13) {
    FUNC7(stderr, "LOOPY LOOP!\n");
    FUNC10(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_RECEIVE);
    res = FUNC2(curl);
  }

test_cleanup:
  FUNC8(stream_uri);

  if(protofile)
    FUNC5(protofile);

  FUNC0(curl);
  FUNC3();

  return res;
}