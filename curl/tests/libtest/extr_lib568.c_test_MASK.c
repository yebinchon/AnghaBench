#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ st_size; } ;
typedef  TYPE_1__ struct_stat ;
typedef  char curl_slist ;
typedef  char* curl_off_t ;
typedef  char FILE ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_HEADERDATA ; 
 int /*<<< orphan*/  CURLOPT_INFILESIZE_LARGE ; 
 int /*<<< orphan*/  CURLOPT_POSTFIELDS ; 
 int /*<<< orphan*/  CURLOPT_READDATA ; 
 int /*<<< orphan*/  CURLOPT_RTSPHEADER ; 
 int /*<<< orphan*/  CURLOPT_RTSP_REQUEST ; 
 int /*<<< orphan*/  CURLOPT_RTSP_STREAM_URI ; 
 int /*<<< orphan*/  CURLOPT_UPLOAD ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 char* CURL_RTSPREQ_ANNOUNCE ; 
 char* CURL_RTSPREQ_DESCRIBE ; 
 char* CURL_RTSPREQ_OPTIONS ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int,TYPE_1__*) ; 
 int FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* stdout ; 
 char* FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

int FUNC16(char *URL)
{
  int res;
  CURL *curl;
  int sdp;
  FILE *sdpf = NULL;
  struct_stat file_info;
  char *stream_uri = NULL;
  int request = 1;
  struct curl_slist *custom_headers = NULL;

  if(FUNC5(CURL_GLOBAL_ALL) != CURLE_OK) {
    FUNC10(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  curl = FUNC2();
  if(!curl) {
    FUNC10(stderr, "curl_easy_init() failed\n");
    FUNC4();
    return TEST_ERR_MAJOR_BAD;
  }

  FUNC15(curl, CURLOPT_HEADERDATA, stdout);
  FUNC15(curl, CURLOPT_WRITEDATA, stdout);

  FUNC15(curl, CURLOPT_URL, URL);

  stream_uri = FUNC14(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  FUNC15(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  FUNC11(stream_uri);
  stream_uri = NULL;

  sdp = FUNC13("log/file568.txt", O_RDONLY);
  FUNC12(sdp, &file_info);
  FUNC0(sdp);

  sdpf = FUNC9("log/file568.txt", "rb");
  if(sdpf == NULL) {
    FUNC10(stderr, "can't open log/file568.txt\n");
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  FUNC15(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_ANNOUNCE);

  FUNC15(curl, CURLOPT_READDATA, sdpf);
  FUNC15(curl, CURLOPT_UPLOAD, 1L);
  FUNC15(curl, CURLOPT_INFILESIZE_LARGE, (curl_off_t) file_info.st_size);

  /* Do the ANNOUNCE */
  res = FUNC3(curl);
  if(res)
    goto test_cleanup;

  FUNC15(curl, CURLOPT_UPLOAD, 0L);
  FUNC8(sdpf);
  sdpf = NULL;

  /* Make sure we can do a normal request now */
  stream_uri = FUNC14(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  FUNC15(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  FUNC11(stream_uri);
  stream_uri = NULL;

  FUNC15(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_DESCRIBE);
  res = FUNC3(curl);
  if(res)
    goto test_cleanup;

  /* Now do a POST style one */

  stream_uri = FUNC14(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  FUNC15(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  FUNC11(stream_uri);
  stream_uri = NULL;

  custom_headers = FUNC6(custom_headers,
                                     "Content-Type: posty goodness");
  if(!custom_headers) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  FUNC15(curl, CURLOPT_RTSPHEADER, custom_headers);
  FUNC15(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_ANNOUNCE);
  FUNC15(curl, CURLOPT_POSTFIELDS,
              "postyfield=postystuff&project=curl\n");

  res = FUNC3(curl);
  if(res)
    goto test_cleanup;

  FUNC15(curl, CURLOPT_POSTFIELDS, NULL);
  FUNC15(curl, CURLOPT_RTSPHEADER, NULL);
  FUNC7(custom_headers);
  custom_headers = NULL;

  /* Make sure we can do a normal request now */
  stream_uri = FUNC14(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  FUNC15(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  FUNC11(stream_uri);
  stream_uri = NULL;

  FUNC15(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_OPTIONS);
  res = FUNC3(curl);

test_cleanup:

  if(sdpf)
    FUNC8(sdpf);

  FUNC11(stream_uri);

  if(custom_headers)
    FUNC7(custom_headers);

  FUNC1(curl);
  FUNC4();

  return res;
}