
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb_data {scalar_t__ remaining_bytes; } ;
typedef long curl_off_t ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_FAILED_INIT ;
 scalar_t__ CURLE_OK ;
 int CURLOPT_KEEP_SENDING_ON_ERROR ;
 int CURLOPT_POST ;
 int CURLOPT_POSTFIELDSIZE_LARGE ;
 int CURLOPT_READDATA ;
 int CURLOPT_READFUNCTION ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURLOPT_WRITEDATA ;
 int CURLOPT_WRITEFUNCTION ;
 int CURL_GLOBAL_ALL ;
 int TEST_ERR_MAJOR_BAD ;
 scalar_t__ TEST_ERR_SUCCESS ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 int fprintf (int ,char*) ;
 scalar_t__ perform_and_check_connections (int *,char*,int) ;
 long read_callback ;
 int reset_data (struct cb_data*,int *) ;
 int stderr ;
 int test_setopt (int *,int ,...) ;
 long write_callback ;

int test(char *URL)
{
  struct cb_data data;
  CURL *curl = ((void*)0);
  CURLcode res = CURLE_FAILED_INIT;

  if(curl_global_init(CURL_GLOBAL_ALL) != CURLE_OK) {
    fprintf(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  curl = curl_easy_init();
  if(curl == ((void*)0)) {
    fprintf(stderr, "curl_easy_init() failed\n");
    curl_global_cleanup();
    return TEST_ERR_MAJOR_BAD;
  }

  reset_data(&data, curl);

  test_setopt(curl, CURLOPT_URL, URL);
  test_setopt(curl, CURLOPT_POST, 1L);
  test_setopt(curl, CURLOPT_POSTFIELDSIZE_LARGE,
              (curl_off_t)data.remaining_bytes);
  test_setopt(curl, CURLOPT_VERBOSE, 1L);
  test_setopt(curl, CURLOPT_READFUNCTION, read_callback);
  test_setopt(curl, CURLOPT_READDATA, &data);
  test_setopt(curl, CURLOPT_WRITEFUNCTION, write_callback);
  test_setopt(curl, CURLOPT_WRITEDATA, &data);

  res = perform_and_check_connections(curl,
    "First request without CURLOPT_KEEP_SENDING_ON_ERROR", 1);
  if(res != TEST_ERR_SUCCESS) {
    goto test_cleanup;
  }

  reset_data(&data, curl);

  res = perform_and_check_connections(curl,
    "Second request without CURLOPT_KEEP_SENDING_ON_ERROR", 1);
  if(res != TEST_ERR_SUCCESS) {
    goto test_cleanup;
  }

  test_setopt(curl, CURLOPT_KEEP_SENDING_ON_ERROR, 1L);

  reset_data(&data, curl);

  res = perform_and_check_connections(curl,
    "First request with CURLOPT_KEEP_SENDING_ON_ERROR", 1);
  if(res != TEST_ERR_SUCCESS) {
    goto test_cleanup;
  }

  reset_data(&data, curl);

  res = perform_and_check_connections(curl,
    "Second request with CURLOPT_KEEP_SENDING_ON_ERROR", 0);
  if(res != TEST_ERR_SUCCESS) {
    goto test_cleanup;
  }

  res = TEST_ERR_SUCCESS;

test_cleanup:

  curl_easy_cleanup(curl);

  curl_global_cleanup();

  return (int)res;
}
