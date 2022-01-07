
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upload_status {scalar_t__ lines_read; } ;
struct curl_slist {int dummy; } ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 int CC ;
 scalar_t__ CURLE_OK ;
 int CURLOPT_CAINFO ;
 int CURLOPT_MAIL_FROM ;
 int CURLOPT_MAIL_RCPT ;
 int CURLOPT_PASSWORD ;
 int CURLOPT_READDATA ;
 int CURLOPT_READFUNCTION ;
 int CURLOPT_UPLOAD ;
 int CURLOPT_URL ;
 int CURLOPT_USERNAME ;
 int CURLOPT_USE_SSL ;
 int CURLOPT_VERBOSE ;
 scalar_t__ CURLUSESSL_ALL ;
 long FROM ;
 int TO ;
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

    curl_easy_setopt(curl, CURLOPT_USERNAME, "user");
    curl_easy_setopt(curl, CURLOPT_PASSWORD, "secret");





    curl_easy_setopt(curl, CURLOPT_URL, "smtp://mainserver.example.net:587");






    curl_easy_setopt(curl, CURLOPT_USE_SSL, (long)CURLUSESSL_ALL);
    curl_easy_setopt(curl, CURLOPT_CAINFO, "/path/to/certificate.pem");
    curl_easy_setopt(curl, CURLOPT_MAIL_FROM, FROM);




    recipients = curl_slist_append(recipients, TO);
    recipients = curl_slist_append(recipients, CC);
    curl_easy_setopt(curl, CURLOPT_MAIL_RCPT, recipients);




    curl_easy_setopt(curl, CURLOPT_READFUNCTION, payload_source);
    curl_easy_setopt(curl, CURLOPT_READDATA, &upload_ctx);
    curl_easy_setopt(curl, CURLOPT_UPLOAD, 1L);




    curl_easy_setopt(curl, CURLOPT_VERBOSE, 1L);


    res = curl_easy_perform(curl);


    if(res != CURLE_OK)
      fprintf(stderr, "curl_easy_perform() failed: %s\n",
              curl_easy_strerror(res));


    curl_slist_free_all(recipients);


    curl_easy_cleanup(curl);
  }

  return (int)res;
}
