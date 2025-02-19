
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_HEADER ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURL_GLOBAL_ALL ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_duphandle (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 scalar_t__ curl_easy_setopt (int *,int ,...) ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;

int test(char *URL)
{
  CURLcode code;
  int rc = 99;

  code = curl_global_init(CURL_GLOBAL_ALL);
  if(code == CURLE_OK) {
    CURL *curl = curl_easy_init();
    if(curl) {
      CURL *curl2;

      curl_easy_setopt(curl, CURLOPT_VERBOSE, 1L);
      curl_easy_setopt(curl, CURLOPT_HEADER, 1L);

      curl2 = curl_easy_duphandle(curl);
      if(curl2) {

        code = curl_easy_setopt(curl2, CURLOPT_URL, URL);
        if(code == CURLE_OK) {

          code = curl_easy_perform(curl2);
          if(code == CURLE_OK)
            rc = 0;
          else
            rc = 1;
        }
        else
          rc = 2;

        curl_easy_cleanup(curl2);
      }
      else
        rc = 3;

      curl_easy_cleanup(curl);
    }
    else
      rc = 4;

    curl_global_cleanup();
  }
  else
    rc = 5;

  return rc;
}
