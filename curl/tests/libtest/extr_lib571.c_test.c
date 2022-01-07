
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char FILE ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_INTERLEAVEFUNCTION ;
 int CURLOPT_RTSP_REQUEST ;
 int CURLOPT_RTSP_STREAM_URI ;
 int CURLOPT_RTSP_TRANSPORT ;
 int CURLOPT_TIMEOUT ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURLOPT_WRITEDATA ;
 int CURL_GLOBAL_ALL ;
 char* CURL_RTSPREQ_DESCRIBE ;
 char* CURL_RTSPREQ_PLAY ;
 char* CURL_RTSPREQ_RECEIVE ;
 char* CURL_RTSPREQ_SETUP ;
 int TEST_ERR_MAJOR_BAD ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 int fclose (char*) ;
 char* fopen (int ,char*) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int libtest_arg2 ;
 int rtp_packet_count ;
 char* rtp_write ;
 int stderr ;
 char* suburl (char*,int ) ;
 int test_setopt (int *,int ,...) ;

int test(char *URL)
{
  int res;
  CURL *curl;
  char *stream_uri = ((void*)0);
  int request = 1;

  FILE *protofile = fopen(libtest_arg2, "wb");
  if(protofile == ((void*)0)) {
    fprintf(stderr, "Couldn't open the protocol dump file\n");
    return TEST_ERR_MAJOR_BAD;
  }

  if(curl_global_init(CURL_GLOBAL_ALL) != CURLE_OK) {
    fprintf(stderr, "curl_global_init() failed\n");
    fclose(protofile);
    return TEST_ERR_MAJOR_BAD;
  }

  curl = curl_easy_init();
  if(!curl) {
    fprintf(stderr, "curl_easy_init() failed\n");
    fclose(protofile);
    curl_global_cleanup();
    return TEST_ERR_MAJOR_BAD;
  }
  test_setopt(curl, CURLOPT_URL, URL);

  stream_uri = suburl(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  test_setopt(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  free(stream_uri);
  stream_uri = ((void*)0);

  test_setopt(curl, CURLOPT_INTERLEAVEFUNCTION, rtp_write);
  test_setopt(curl, CURLOPT_TIMEOUT, 3L);
  test_setopt(curl, CURLOPT_VERBOSE, 1L);
  test_setopt(curl, CURLOPT_WRITEDATA, protofile);

  test_setopt(curl, CURLOPT_RTSP_TRANSPORT, "RTP/AVP/TCP;interleaved=0-1");
  test_setopt(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_SETUP);

  res = curl_easy_perform(curl);
  if(res)
    goto test_cleanup;


  stream_uri = suburl(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  test_setopt(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  free(stream_uri);
  stream_uri = ((void*)0);
  test_setopt(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_PLAY);

  res = curl_easy_perform(curl);
  if(res)
    goto test_cleanup;


  stream_uri = suburl(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  test_setopt(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  free(stream_uri);
  stream_uri = ((void*)0);
  test_setopt(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_DESCRIBE);

  res = curl_easy_perform(curl);
  if(res)
    goto test_cleanup;

  stream_uri = suburl(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  test_setopt(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  free(stream_uri);
  stream_uri = ((void*)0);
  test_setopt(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_PLAY);

  res = curl_easy_perform(curl);
  if(res)
    goto test_cleanup;

  fprintf(stderr, "PLAY COMPLETE\n");


  while(!res && rtp_packet_count < 13) {
    fprintf(stderr, "LOOPY LOOP!\n");
    test_setopt(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_RECEIVE);
    res = curl_easy_perform(curl);
  }

test_cleanup:
  free(stream_uri);

  if(protofile)
    fclose(protofile);

  curl_easy_cleanup(curl);
  curl_global_cleanup();

  return res;
}
