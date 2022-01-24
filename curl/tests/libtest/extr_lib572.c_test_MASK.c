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
struct curl_slist {int dummy; } ;
typedef  char* curl_off_t ;
typedef  char FILE ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_HEADERDATA ; 
 int /*<<< orphan*/  CURLOPT_INFILESIZE_LARGE ; 
 int /*<<< orphan*/  CURLOPT_POSTFIELDS ; 
 int /*<<< orphan*/  CURLOPT_READDATA ; 
 int /*<<< orphan*/  CURLOPT_RTSP_REQUEST ; 
 int /*<<< orphan*/  CURLOPT_RTSP_STREAM_URI ; 
 int /*<<< orphan*/  CURLOPT_RTSP_TRANSPORT ; 
 int /*<<< orphan*/  CURLOPT_UPLOAD ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 char* CURL_RTSPREQ_GET_PARAMETER ; 
 char* CURL_RTSPREQ_OPTIONS ; 
 char* CURL_RTSPREQ_SETUP ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct curl_slist*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int,TYPE_1__*) ; 
 int FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* stdout ; 
 char* FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

int FUNC15(char *URL)
{
  int res;
  CURL *curl;
  int params;
  FILE *paramsf = NULL;
  struct_stat file_info;
  char *stream_uri = NULL;
  int request = 1;
  struct curl_slist *custom_headers = NULL;

  if(FUNC5(CURL_GLOBAL_ALL) != CURLE_OK) {
    FUNC9(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  curl = FUNC2();
  if(!curl) {
    FUNC9(stderr, "curl_easy_init() failed\n");
    FUNC4();
    return TEST_ERR_MAJOR_BAD;
  }


  FUNC14(curl, CURLOPT_HEADERDATA, stdout);
  FUNC14(curl, CURLOPT_WRITEDATA, stdout);
  FUNC14(curl, CURLOPT_VERBOSE, 1L);

  FUNC14(curl, CURLOPT_URL, URL);

  /* SETUP */
  stream_uri = FUNC13(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  FUNC14(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  FUNC10(stream_uri);
  stream_uri = NULL;

  FUNC14(curl, CURLOPT_RTSP_TRANSPORT, "Planes/Trains/Automobiles");
  FUNC14(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_SETUP);
  res = FUNC3(curl);
  if(res)
    goto test_cleanup;

  stream_uri = FUNC13(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  FUNC14(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  FUNC10(stream_uri);
  stream_uri = NULL;

  /* PUT style GET_PARAMETERS */
  params = FUNC12("log/file572.txt", O_RDONLY);
  FUNC11(params, &file_info);
  FUNC0(params);

  paramsf = FUNC8("log/file572.txt", "rb");
  if(paramsf == NULL) {
    FUNC9(stderr, "can't open log/file572.txt\n");
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  FUNC14(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_GET_PARAMETER);

  FUNC14(curl, CURLOPT_READDATA, paramsf);
  FUNC14(curl, CURLOPT_UPLOAD, 1L);
  FUNC14(curl, CURLOPT_INFILESIZE_LARGE, (curl_off_t) file_info.st_size);

  res = FUNC3(curl);
  if(res)
    goto test_cleanup;

  FUNC14(curl, CURLOPT_UPLOAD, 0L);
  FUNC7(paramsf);
  paramsf = NULL;

  /* Heartbeat GET_PARAMETERS */
  stream_uri = FUNC13(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  FUNC14(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  FUNC10(stream_uri);
  stream_uri = NULL;

  res = FUNC3(curl);
  if(res)
    goto test_cleanup;

  /* POST GET_PARAMETERS */

  stream_uri = FUNC13(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  FUNC14(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  FUNC10(stream_uri);
  stream_uri = NULL;

  FUNC14(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_GET_PARAMETER);
  FUNC14(curl, CURLOPT_POSTFIELDS, "packets_received\njitter\n");

  res = FUNC3(curl);
  if(res)
    goto test_cleanup;

  FUNC14(curl, CURLOPT_POSTFIELDS, NULL);

  /* Make sure we can do a normal request now */
  stream_uri = FUNC13(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  FUNC14(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  FUNC10(stream_uri);
  stream_uri = NULL;

  FUNC14(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_OPTIONS);
  res = FUNC3(curl);

test_cleanup:

  if(paramsf)
    FUNC7(paramsf);

  FUNC10(stream_uri);

  if(custom_headers)
    FUNC6(custom_headers);

  FUNC1(curl);
  FUNC4();

  return res;
}