
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;
typedef int CURL ;


 int CURLE_OK ;
 int CURLINFO_EFFECTIVE_URL ;
 int CURLINFO_REDIRECT_COUNT ;
 int CURLINFO_REDIRECT_URL ;
 int CURLINFO_RESPONSE_CODE ;
 int CURLOPT_FOLLOWLOCATION ;
 int CURLOPT_URL ;
 int TEST_ERR_MAJOR_BAD ;
 int curl_easy_cleanup (int *) ;
 int curl_easy_getinfo (int *,int ,...) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_global_cleanup () ;
 int fprintf (int ,char*) ;
 int printf (char*,int,int,int,char*,char*) ;
 int stderr ;
 int test_setopt (int *,int ,...) ;

int test(char *URL)
{
  CURL *curl;
  CURLcode res = CURLE_OK;
  long curlResponseCode;
  long curlRedirectCount;
  char *effectiveUrl = ((void*)0);
  char *redirectUrl = ((void*)0);

  curl = curl_easy_init();
  if(!curl) {
    fprintf(stderr, "curl_easy_init() failed\n");
    curl_global_cleanup();
    return TEST_ERR_MAJOR_BAD;
  }

  test_setopt(curl, CURLOPT_URL, URL);

  test_setopt(curl, CURLOPT_FOLLOWLOCATION, 0L);


  res = curl_easy_perform(curl);

  curl_easy_getinfo(curl, CURLINFO_RESPONSE_CODE, &curlResponseCode);
  curl_easy_getinfo(curl, CURLINFO_REDIRECT_COUNT, &curlRedirectCount);
  curl_easy_getinfo(curl, CURLINFO_EFFECTIVE_URL, &effectiveUrl);
  curl_easy_getinfo(curl, CURLINFO_REDIRECT_URL, &redirectUrl);

  printf("res: %d\n"
         "status: %d\n"
         "redirects: %d\n"
         "effectiveurl: %s\n"
         "redirecturl: %s\n",
         (int)res,
         (int)curlResponseCode,
         (int)curlRedirectCount,
         effectiveUrl,
         redirectUrl);

test_cleanup:


  curl_easy_cleanup(curl);
  curl_global_cleanup();

  return res;
}
