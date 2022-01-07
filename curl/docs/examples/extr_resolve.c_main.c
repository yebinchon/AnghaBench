
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char curl_slist ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_RESOLVE ;
 int CURLOPT_URL ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,char*) ;
 char* curl_slist_append (int *,char*) ;
 int curl_slist_free_all (char*) ;

int main(void)
{
  CURL *curl;
  CURLcode res = CURLE_OK;






  struct curl_slist *host = curl_slist_append(((void*)0),
                                              "example.com:443:127.0.0.1");

  curl = curl_easy_init();
  if(curl) {
    curl_easy_setopt(curl, CURLOPT_RESOLVE, host);
    curl_easy_setopt(curl, CURLOPT_URL, "https://example.com");
    res = curl_easy_perform(curl);


    curl_easy_cleanup(curl);
  }

  curl_slist_free_all(host);

  return (int)res;
}
