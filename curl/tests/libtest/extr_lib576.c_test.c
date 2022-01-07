
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char chunk_data_t ;
typedef int CURLcode ;
typedef int CURL ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int CURLOPT_CHUNK_BGN_FUNCTION ;
 int CURLOPT_CHUNK_DATA ;
 int CURLOPT_CHUNK_END_FUNCTION ;
 int CURLOPT_URL ;
 int CURLOPT_WILDCARDMATCH ;
 int CURL_GLOBAL_ALL ;
 char* chunk_bgn ;
 char* chunk_end ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_global_cleanup () ;
 int curl_global_init (int ) ;
 int test_setopt (int *,int ,...) ;

int test(char *URL)
{
  CURL *handle = ((void*)0);
  CURLcode res = CURLE_OK;
  chunk_data_t chunk_data = {0, 0};
  curl_global_init(CURL_GLOBAL_ALL);
  handle = curl_easy_init();
  if(!handle) {
    res = CURLE_OUT_OF_MEMORY;
    goto test_cleanup;
  }

  test_setopt(handle, CURLOPT_URL, URL);
  test_setopt(handle, CURLOPT_WILDCARDMATCH, 1L);
  test_setopt(handle, CURLOPT_CHUNK_BGN_FUNCTION, chunk_bgn);
  test_setopt(handle, CURLOPT_CHUNK_END_FUNCTION, chunk_end);
  test_setopt(handle, CURLOPT_CHUNK_DATA, &chunk_data);

  res = curl_easy_perform(handle);

test_cleanup:
  if(handle)
    curl_easy_cleanup(handle);
  curl_global_cleanup();
  return res;
}
