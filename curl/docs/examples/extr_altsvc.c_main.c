
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;
typedef int CURL ;


 scalar_t__ CURLALTSVC_H1 ;
 long CURLALTSVC_H2 ;
 long CURLALTSVC_H3 ;
 int CURLE_OK ;
 int CURLOPT_ALTSVC ;
 int CURLOPT_ALTSVC_CTRL ;
 int CURLOPT_URL ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,...) ;
 char* curl_easy_strerror (int ) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

int main(void)
{
  CURL *curl;
  CURLcode res;

  curl = curl_easy_init();
  if(curl) {
    curl_easy_setopt(curl, CURLOPT_URL, "https://example.com");


    curl_easy_setopt(curl, CURLOPT_ALTSVC, "altsvc.txt");


    curl_easy_setopt(curl, CURLOPT_ALTSVC_CTRL, (long)
                     CURLALTSVC_H1|CURLALTSVC_H2|CURLALTSVC_H3);


    res = curl_easy_perform(curl);

    if(res != CURLE_OK)
      fprintf(stderr, "curl_easy_perform() failed: %s\n",
              curl_easy_strerror(res));


    curl_easy_cleanup(curl);
  }
  return 0;
}
