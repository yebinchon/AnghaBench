
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_HEADER ;
 int CURLOPT_NOPROGRESS ;
 int CURLOPT_POST ;
 int CURLOPT_POSTFIELDS ;
 int CURLOPT_POSTFIELDSIZE ;
 int CURLOPT_PROGRESSFUNCTION ;
 int CURLOPT_TRANSFERTEXT ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURL_GLOBAL_ALL ;
 int TEST_ERR_MAJOR_BAD ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 long data ;
 scalar_t__ data_size ;
 int fprintf (int ,char*) ;
 long progress_callback ;
 int stderr ;
 int test_setopt (int *,int ,...) ;

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
    curl_global_cleanup();
    return TEST_ERR_MAJOR_BAD;
  }


  test_setopt(curl, CURLOPT_URL, URL);


  test_setopt(curl, CURLOPT_POST, 1L);







  test_setopt(curl, CURLOPT_POSTFIELDSIZE, (long)data_size);
  test_setopt(curl, CURLOPT_POSTFIELDS, data);


  test_setopt(curl, CURLOPT_NOPROGRESS, 0L);
  test_setopt(curl, CURLOPT_PROGRESSFUNCTION, progress_callback);




  test_setopt(curl, CURLOPT_VERBOSE, 1L);


  test_setopt(curl, CURLOPT_HEADER, 1L);


  res = curl_easy_perform(curl);

test_cleanup:


  curl_easy_cleanup(curl);
  curl_global_cleanup();

  return res;
}
