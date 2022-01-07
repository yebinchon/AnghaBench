
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;
typedef int CURL ;


 int CURLE_OK ;
 int CURLINFO_REDIRECT_URL ;
 int CURLINFO_RESPONSE_CODE ;
 int CURLOPT_URL ;
 int curl_easy_cleanup (int *) ;
 int curl_easy_getinfo (int *,int ,...) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,char*) ;
 char* curl_easy_strerror (int ) ;
 int fprintf (int ,char*,...) ;
 int printf (char*,char*) ;
 int stderr ;

int main(void)
{
  CURL *curl;
  CURLcode res;
  char *location;
  long response_code;

  curl = curl_easy_init();
  if(curl) {
    curl_easy_setopt(curl, CURLOPT_URL, "https://example.com");




    res = curl_easy_perform(curl);

    if(res != CURLE_OK)
      fprintf(stderr, "curl_easy_perform() failed: %s\n",
              curl_easy_strerror(res));
    else {
      res = curl_easy_getinfo(curl, CURLINFO_RESPONSE_CODE, &response_code);
      if((res == CURLE_OK) &&
         ((response_code / 100) != 3)) {

        fprintf(stderr, "Not a redirect.\n");
      }
      else {
        res = curl_easy_getinfo(curl, CURLINFO_REDIRECT_URL, &location);

        if((res == CURLE_OK) && location) {


          printf("Redirected to: %s\n", location);
        }
      }
    }


    curl_easy_cleanup(curl);
  }
  return 0;
}
