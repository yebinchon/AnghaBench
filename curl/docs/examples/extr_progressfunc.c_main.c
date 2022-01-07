
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct myprogress {int * curl; scalar_t__ lastruntime; } ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_NOPROGRESS ;
 int CURLOPT_PROGRESSDATA ;
 int CURLOPT_PROGRESSFUNCTION ;
 int CURLOPT_URL ;
 int CURLOPT_XFERINFODATA ;
 int CURLOPT_XFERINFOFUNCTION ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,...) ;
 char* curl_easy_strerror (scalar_t__) ;
 int fprintf (int ,char*,char*) ;
 long older_progress ;
 int stderr ;
 long xferinfo ;

int main(void)
{
  CURL *curl;
  CURLcode res = CURLE_OK;
  struct myprogress prog;

  curl = curl_easy_init();
  if(curl) {
    prog.lastruntime = 0;
    prog.curl = curl;

    curl_easy_setopt(curl, CURLOPT_URL, "https://example.com/");
    curl_easy_setopt(curl, CURLOPT_PROGRESSFUNCTION, older_progress);

    curl_easy_setopt(curl, CURLOPT_PROGRESSDATA, &prog);


    curl_easy_setopt(curl, CURLOPT_NOPROGRESS, 0L);
    res = curl_easy_perform(curl);

    if(res != CURLE_OK)
      fprintf(stderr, "%s\n", curl_easy_strerror(res));


    curl_easy_cleanup(curl);
  }
  return (int)res;
}
