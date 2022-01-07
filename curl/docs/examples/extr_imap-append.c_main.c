
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upload_status {scalar_t__ lines_read; } ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_INFILESIZE ;
 int CURLOPT_PASSWORD ;
 int CURLOPT_READDATA ;
 int CURLOPT_READFUNCTION ;
 int CURLOPT_UPLOAD ;
 int CURLOPT_URL ;
 int CURLOPT_USERNAME ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,...) ;
 char* curl_easy_strerror (scalar_t__) ;
 int fprintf (int ,char*,char*) ;
 long payload_source ;
 char** payload_text ;
 int stderr ;
 scalar_t__ strlen (char const*) ;

int main(void)
{
  CURL *curl;
  CURLcode res = CURLE_OK;

  curl = curl_easy_init();
  if(curl) {
    const char **p;
    long infilesize;
    struct upload_status upload_ctx;

    upload_ctx.lines_read = 0;


    curl_easy_setopt(curl, CURLOPT_USERNAME, "user");
    curl_easy_setopt(curl, CURLOPT_PASSWORD, "secret");




    curl_easy_setopt(curl, CURLOPT_URL, "imap://imap.example.com/100");




    curl_easy_setopt(curl, CURLOPT_READFUNCTION, payload_source);
    curl_easy_setopt(curl, CURLOPT_READDATA, &upload_ctx);
    curl_easy_setopt(curl, CURLOPT_UPLOAD, 1L);

    infilesize = 0;
    for(p = payload_text; *p; ++p) {
      infilesize += (long)strlen(*p);
    }
    curl_easy_setopt(curl, CURLOPT_INFILESIZE, infilesize);


    res = curl_easy_perform(curl);


    if(res != CURLE_OK)
      fprintf(stderr, "curl_easy_perform() failed: %s\n",
              curl_easy_strerror(res));


    curl_easy_cleanup(curl);
  }

  return (int)res;
}
