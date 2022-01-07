
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURL ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_RTSP_CSEQ_ERROR ;
 int CURLE_RTSP_SESSION_ERROR ;
 int CURLOPT_HEADERDATA ;
 int CURLOPT_RTSP_CLIENT_CSEQ ;
 int CURLOPT_RTSP_REQUEST ;
 int CURLOPT_RTSP_STREAM_URI ;
 int CURLOPT_RTSP_TRANSPORT ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURLOPT_WRITEDATA ;
 int CURL_GLOBAL_ALL ;
 char* CURL_RTSPREQ_OPTIONS ;
 char* CURL_RTSPREQ_PLAY ;
 char* CURL_RTSPREQ_SETUP ;
 int TEST_ERR_MAJOR_BAD ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int stderr ;
 char* stdout ;
 char* suburl (char*,int ) ;
 int test_setopt (int *,int ,...) ;

int test(char *URL)
{
  int res;
  CURL *curl;
  int request = 1;
  char *stream_uri = ((void*)0);

  if(curl_global_init(CURL_GLOBAL_ALL) != CURLE_OK) {
    fprintf(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  curl = curl_easy_init();
  if(!curl) {
    fprintf(stderr, "curl_easy_init() failed\n");
    curl_global_cleanup();
    return TEST_ERR_MAJOR_BAD;
  }

  test_setopt(curl, CURLOPT_HEADERDATA, stdout);
  test_setopt(curl, CURLOPT_WRITEDATA, stdout);
  test_setopt(curl, CURLOPT_VERBOSE, 1L);

  test_setopt(curl, CURLOPT_URL, URL);

  test_setopt(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_OPTIONS);

  stream_uri = suburl(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  test_setopt(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  free(stream_uri);
  stream_uri = ((void*)0);

  res = curl_easy_perform(curl);
  if(res != (int)CURLE_RTSP_CSEQ_ERROR) {
    fprintf(stderr, "Failed to detect CSeq mismatch");
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }

  test_setopt(curl, CURLOPT_RTSP_CLIENT_CSEQ, 999L);
  test_setopt(curl, CURLOPT_RTSP_TRANSPORT,
                    "RAW/RAW/UDP;unicast;client_port=3056-3057");
  test_setopt(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_SETUP);

  stream_uri = suburl(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  test_setopt(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  free(stream_uri);
  stream_uri = ((void*)0);

  res = curl_easy_perform(curl);
  if(res)
    goto test_cleanup;

  test_setopt(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_PLAY);

  stream_uri = suburl(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  test_setopt(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  free(stream_uri);
  stream_uri = ((void*)0);

  res = curl_easy_perform(curl);
  if(res != CURLE_RTSP_SESSION_ERROR) {
    fprintf(stderr, "Failed to detect a Session ID mismatch");
  }

test_cleanup:
  free(stream_uri);

  curl_easy_cleanup(curl);
  curl_global_cleanup();

  return res;
}
