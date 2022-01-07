
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char curl_slist ;
typedef int CURLcode ;
typedef int CURL ;


 int CURLE_OK ;
 int CURLOPT_MAIL_RCPT ;
 int CURLOPT_URL ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,char*) ;
 char* curl_easy_strerror (int ) ;
 char* curl_slist_append (char*,char*) ;
 int curl_slist_free_all (char*) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

int main(void)
{
  CURL *curl;
  CURLcode res;
  struct curl_slist *recipients = ((void*)0);

  curl = curl_easy_init();
  if(curl) {

    curl_easy_setopt(curl, CURLOPT_URL, "smtp://mail.example.com");


    recipients = curl_slist_append(recipients, "<recipient@example.com>");
    curl_easy_setopt(curl, CURLOPT_MAIL_RCPT, recipients);


    res = curl_easy_perform(curl);


    if(res != CURLE_OK)
      fprintf(stderr, "curl_easy_perform() failed: %s\n",
              curl_easy_strerror(res));


    curl_slist_free_all(recipients);







    curl_easy_cleanup(curl);
  }

  return 0;
}
