
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bURL ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_FAILED_INIT ;
 scalar_t__ CURLE_OK ;
 int CURLOPT_HEADER ;
 int CURLOPT_PROXY ;
 int CURLOPT_PROXYTYPE ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 long CURLPROXY_HTTP ;
 int CURL_GLOBAL_ALL ;
 int TEST_ERR_MAJOR_BAD ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 int fprintf (int ,char*) ;
 long libtest_arg2 ;
 int msnprintf (char*,int,char*,char*) ;
 int stderr ;
 int test_setopt (int *,int ,...) ;

int test(char *URL)
{
  CURL *curl = ((void*)0);
  CURLcode res = CURLE_FAILED_INIT;
  char bURL[512];
  msnprintf(bURL, sizeof(bURL),
            "%s HTTP/1.1\r\nGET http://1529.com/1529", URL);

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

  test_setopt(curl, CURLOPT_URL, bURL);
  test_setopt(curl, CURLOPT_PROXY, libtest_arg2);
  test_setopt(curl, CURLOPT_VERBOSE, 1L);
  test_setopt(curl, CURLOPT_PROXYTYPE, CURLPROXY_HTTP);
  test_setopt(curl, CURLOPT_HEADER, 1L);

  res = curl_easy_perform(curl);

test_cleanup:

  curl_easy_cleanup(curl);
  curl_global_cleanup();

  return (int)res;
}
