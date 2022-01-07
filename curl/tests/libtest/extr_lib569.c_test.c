
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int CURL ;


 scalar_t__ CURLE_BAD_FUNCTION_ARGUMENT ;
 scalar_t__ CURLE_OK ;
 int CURLINFO_RTSP_SESSION_ID ;
 int CURLOPT_HEADERDATA ;
 int CURLOPT_RTSP_REQUEST ;
 int CURLOPT_RTSP_SESSION_ID ;
 int CURLOPT_RTSP_STREAM_URI ;
 int CURLOPT_RTSP_TRANSPORT ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURLOPT_WRITEDATA ;
 int CURL_GLOBAL_ALL ;
 char* CURL_RTSPREQ_SETUP ;
 char* CURL_RTSPREQ_TEARDOWN ;
 int TEST_ERR_MAJOR_BAD ;
 int curl_easy_cleanup (int *) ;
 int curl_easy_getinfo (int *,int ,char**) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int *,char*,...) ;
 int free (char*) ;
 int libtest_arg2 ;
 int stderr ;
 char* stdout ;
 char* suburl (char*,int ) ;
 int test_setopt (int *,int ,...) ;

int test(char *URL)
{
  int res;
  CURL *curl;
  char *stream_uri = ((void*)0);
  char *rtsp_session_id;
  int request = 1;
  int i;

  FILE *idfile = fopen(libtest_arg2, "wb");
  if(idfile == ((void*)0)) {
    fprintf(stderr, "couldn't open the Session ID File\n");
    return TEST_ERR_MAJOR_BAD;
  }

  if(curl_global_init(CURL_GLOBAL_ALL) != CURLE_OK) {
    fprintf(stderr, "curl_global_init() failed\n");
    fclose(idfile);
    return TEST_ERR_MAJOR_BAD;
  }

  curl = curl_easy_init();
  if(!curl) {
    fprintf(stderr, "curl_easy_init() failed\n");
    curl_global_cleanup();
    fclose(idfile);
    return TEST_ERR_MAJOR_BAD;
  }

  test_setopt(curl, CURLOPT_HEADERDATA, stdout);
  test_setopt(curl, CURLOPT_WRITEDATA, stdout);
  test_setopt(curl, CURLOPT_VERBOSE, 1L);

  test_setopt(curl, CURLOPT_URL, URL);

  test_setopt(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_SETUP);
  res = curl_easy_perform(curl);
  if(res != (int)CURLE_BAD_FUNCTION_ARGUMENT) {
    fprintf(stderr, "This should have failed. "
            "Cannot setup without a Transport: header");
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }


  for(i = 0; i < 3; i++) {
    stream_uri = suburl(URL, request++);
    if(!stream_uri) {
      res = TEST_ERR_MAJOR_BAD;
      goto test_cleanup;
    }
    test_setopt(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
    free(stream_uri);
    stream_uri = ((void*)0);

    test_setopt(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_SETUP);
    test_setopt(curl, CURLOPT_RTSP_TRANSPORT,
                "Fake/NotReal/JustATest;foo=baz");
    res = curl_easy_perform(curl);
    if(res)
      goto test_cleanup;

    curl_easy_getinfo(curl, CURLINFO_RTSP_SESSION_ID, &rtsp_session_id);
    fprintf(idfile, "Got Session ID: [%s]\n", rtsp_session_id);
    rtsp_session_id = ((void*)0);

    stream_uri = suburl(URL, request++);
    if(!stream_uri) {
      res = TEST_ERR_MAJOR_BAD;
      goto test_cleanup;
    }
    test_setopt(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
    free(stream_uri);
    stream_uri = ((void*)0);

    test_setopt(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_TEARDOWN);
    res = curl_easy_perform(curl);


    test_setopt(curl, CURLOPT_RTSP_SESSION_ID, ((void*)0));
  }

test_cleanup:

  if(idfile)
    fclose(idfile);

  free(stream_uri);
  curl_easy_cleanup(curl);
  curl_global_cleanup();

  return res;
}
