
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_COULDNT_RESOLVE_HOST ;
 scalar_t__ CURLE_OK ;
 int CURLOPT_RESOLVER_START_DATA ;
 int CURLOPT_RESOLVER_START_FUNCTION ;
 int CURLOPT_URL ;
 int CURL_GLOBAL_ALL ;
 char* TEST_DATA_STRING ;
 scalar_t__ TEST_ERR_FAILURE ;
 int TEST_ERR_MAJOR_BAD ;
 int cb_count ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 int fprintf (int ,char*,...) ;
 char* resolver_alloc_cb_fail ;
 char* resolver_alloc_cb_pass ;
 int stderr ;
 int test_setopt (int *,int ,char*) ;

int test(char *URL)
{
  CURL *curl;
  CURLcode res = CURLE_OK;

  if(curl_global_init(CURL_GLOBAL_ALL) != CURLE_OK) {
    fprintf(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }
  curl = curl_easy_init();
  if(!curl) {
    fprintf(stderr, "curl_easy_init() failed\n");
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }


  test_setopt(curl, CURLOPT_URL, URL);

  test_setopt(curl, CURLOPT_RESOLVER_START_DATA, TEST_DATA_STRING);
  test_setopt(curl, CURLOPT_RESOLVER_START_FUNCTION, resolver_alloc_cb_fail);


  res = curl_easy_perform(curl);
  if(res != CURLE_COULDNT_RESOLVE_HOST) {
    fprintf(stderr, "curl_easy_perform should have returned "
            "CURLE_COULDNT_RESOLVE_HOST but instead returned error %d\n", res);
    if(res == CURLE_OK)
      res = TEST_ERR_FAILURE;
    goto test_cleanup;
  }

  test_setopt(curl, CURLOPT_RESOLVER_START_FUNCTION, resolver_alloc_cb_pass);


  res = curl_easy_perform(curl);
  if(res) {
    fprintf(stderr, "curl_easy_perform failed.\n");
    goto test_cleanup;
  }

  if(cb_count != 2) {
    fprintf(stderr, "Unexpected number of callbacks: %d\n", cb_count);
    res = TEST_ERR_FAILURE;
    goto test_cleanup;
  }

test_cleanup:

  curl_easy_cleanup(curl);
  curl_global_cleanup();

  return (int)res;
}
