
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upload_status {scalar_t__ lines_read; } ;
struct curl_slist {int dummy; } ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_LOGIN_OPTIONS ;
 int CURLOPT_MAIL_FROM ;
 int CURLOPT_MAIL_RCPT ;
 int CURLOPT_PASSWORD ;
 int CURLOPT_READDATA ;
 int CURLOPT_READFUNCTION ;
 int CURLOPT_SASL_AUTHZID ;
 int CURLOPT_UPLOAD ;
 int CURLOPT_URL ;
 int CURLOPT_USERNAME ;
 long FROM_ADDR ;
 int TO_ADDR ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,...) ;
 char* curl_easy_strerror (scalar_t__) ;
 struct curl_slist* curl_slist_append (struct curl_slist*,int ) ;
 int curl_slist_free_all (struct curl_slist*) ;
 int fprintf (int ,char*,char*) ;
 long payload_source ;
 int stderr ;

int main(void)
{
  CURL *curl;
  CURLcode res = CURLE_OK;
  struct curl_slist *recipients = ((void*)0);
  struct upload_status upload_ctx;

  upload_ctx.lines_read = 0;

  curl = curl_easy_init();
  if(curl) {


    curl_easy_setopt(curl, CURLOPT_URL, "smtp://mail.example.com:587");


    curl_easy_setopt(curl, CURLOPT_USERNAME, "kurt");
    curl_easy_setopt(curl, CURLOPT_PASSWORD, "xipj3plmq");


    curl_easy_setopt(curl, CURLOPT_SASL_AUTHZID, "ursel");


    curl_easy_setopt(curl, CURLOPT_LOGIN_OPTIONS, "AUTH=PLAIN");
    curl_easy_setopt(curl, CURLOPT_MAIL_FROM, FROM_ADDR);



    recipients = curl_slist_append(recipients, TO_ADDR);
    curl_easy_setopt(curl, CURLOPT_MAIL_RCPT, recipients);




    curl_easy_setopt(curl, CURLOPT_READFUNCTION, payload_source);
    curl_easy_setopt(curl, CURLOPT_READDATA, &upload_ctx);
    curl_easy_setopt(curl, CURLOPT_UPLOAD, 1L);


    res = curl_easy_perform(curl);


    if(res != CURLE_OK)
      fprintf(stderr, "curl_easy_perform() failed: %s\n",
              curl_easy_strerror(res));


    curl_slist_free_all(recipients);
    curl_easy_cleanup(curl);
  }

  return (int)res;
}
