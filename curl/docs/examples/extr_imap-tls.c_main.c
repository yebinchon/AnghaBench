
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_CAINFO ;
 int CURLOPT_PASSWORD ;
 int CURLOPT_URL ;
 int CURLOPT_USERNAME ;
 int CURLOPT_USE_SSL ;
 int CURLOPT_VERBOSE ;
 scalar_t__ CURLUSESSL_ALL ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,...) ;
 char* curl_easy_strerror (scalar_t__) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

int main(void)
{
  CURL *curl;
  CURLcode res = CURLE_OK;

  curl = curl_easy_init();
  if(curl) {

    curl_easy_setopt(curl, CURLOPT_USERNAME, "user");
    curl_easy_setopt(curl, CURLOPT_PASSWORD, "secret");


    curl_easy_setopt(curl, CURLOPT_URL,
                     "imap://imap.example.com/INBOX/;UID=1");






    curl_easy_setopt(curl, CURLOPT_USE_SSL, (long)CURLUSESSL_ALL);
    curl_easy_setopt(curl, CURLOPT_CAINFO, "/path/to/certificate.pem");




    curl_easy_setopt(curl, CURLOPT_VERBOSE, 1L);


    res = curl_easy_perform(curl);


    if(res != CURLE_OK)
      fprintf(stderr, "curl_easy_perform() failed: %s\n",
              curl_easy_strerror(res));


    curl_easy_cleanup(curl);
  }

  return (int)res;
}
