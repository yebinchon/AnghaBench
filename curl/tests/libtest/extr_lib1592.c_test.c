
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CURLMcode ;
typedef int CURLM ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLM_OK ;
 int CURLOPT_DNS_SERVERS ;
 int CURLOPT_TIMEOUT_MS ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURL_GLOBAL_ALL ;
 int TEST_HANG_TIMEOUT ;
 int abort_on_test_timeout () ;
 int curl_easy_cleanup (int *) ;
 scalar_t__ curl_easy_setopt (int *,int ,char*) ;
 int curl_global_cleanup () ;
 int curl_multi_cleanup (int *) ;
 scalar_t__ curl_multi_remove_handle (int *,int *) ;
 int easy_init (int *) ;
 int easy_setopt (int *,int ,...) ;
 int fprintf (int ,char*,...) ;
 int global_init (int ) ;
 int multi_add_handle (int *,int *) ;
 int multi_init (int *) ;
 int multi_perform (int *,int*) ;
 int start_test_timing () ;
 int stderr ;

int test(char *URL)
{
  int stillRunning;
  CURLM *multiHandle = ((void*)0);
  CURL *curl = ((void*)0);
  CURLMcode res = CURLM_OK;
  int timeout;

  global_init(CURL_GLOBAL_ALL);

  multi_init(multiHandle);

  easy_init(curl);

  easy_setopt(curl, CURLOPT_VERBOSE, 1L);
  easy_setopt(curl, CURLOPT_URL, URL);


  if(curl_easy_setopt(curl, CURLOPT_DNS_SERVERS, "0.0.0.0") == CURLE_OK)






    timeout = TEST_HANG_TIMEOUT * 2;
  else {
    fprintf(stderr,
            "CURLOPT_DNS_SERVERS not supported; "
            "assuming curl_multi_remove_handle() will block\n");
    timeout = TEST_HANG_TIMEOUT / 2;
  }





  easy_setopt(curl, CURLOPT_TIMEOUT_MS, timeout);

  multi_add_handle(multiHandle, curl);


  fprintf(stderr, "curl_multi_perform()...\n");
  multi_perform(multiHandle, &stillRunning);
  fprintf(stderr, "curl_multi_perform() succeeded\n");


  fprintf(stderr, "curl_multi_remove_handle()...\n");
  start_test_timing();
  res = curl_multi_remove_handle(multiHandle, curl);
  if(res) {
    fprintf(stderr, "curl_multi_remove_handle() failed, "
            "with code %d\n", (int)res);
    goto test_cleanup;
  }
  fprintf(stderr, "curl_multi_remove_handle() succeeded\n");




  abort_on_test_timeout();

test_cleanup:
  curl_easy_cleanup(curl);
  curl_multi_cleanup(multiHandle);
  curl_global_cleanup();

  return (int)res;
}
