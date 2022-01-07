
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char curl_slist ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_HEADERDATA ;
 int CURLOPT_RTSPHEADER ;
 int CURLOPT_RTSP_REQUEST ;
 int CURLOPT_RTSP_STREAM_URI ;
 int CURLOPT_URL ;
 int CURLOPT_USERAGENT ;
 int CURLOPT_WRITEDATA ;
 int CURL_GLOBAL_ALL ;
 char* CURL_RTSPREQ_OPTIONS ;
 int TEST_ERR_MAJOR_BAD ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 char* curl_slist_append (char*,char*) ;
 int curl_slist_free_all (char*) ;
 int fprintf (int ,char*) ;
 int stderr ;
 char* stdout ;
 int test_setopt (int *,int ,char*) ;

int test(char *URL)
{
  CURLcode res;
  CURL *curl;
  struct curl_slist *custom_headers = ((void*)0);

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

  test_setopt(curl, CURLOPT_URL, URL);
  test_setopt(curl, CURLOPT_RTSP_STREAM_URI, URL);
  test_setopt(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_OPTIONS);
  test_setopt(curl, CURLOPT_USERAGENT, "test567");

  custom_headers = curl_slist_append(custom_headers, "Test-Number: 567");
  test_setopt(curl, CURLOPT_RTSPHEADER, custom_headers);

  res = curl_easy_perform(curl);

test_cleanup:

  if(custom_headers)
    curl_slist_free_all(custom_headers);
  curl_easy_cleanup(curl);
  curl_global_cleanup();

  return (int)res;
}
