
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_CAINFO ;
 int CURLOPT_CAPATH ;
 int CURLOPT_FRESH_CONNECT ;
 int CURLOPT_HEADER ;
 int CURLOPT_HEADERDATA ;
 int CURLOPT_HEADERFUNCTION ;
 int CURLOPT_NOPROGRESS ;
 int CURLOPT_NOSIGNAL ;
 int CURLOPT_SSLCERTTYPE ;
 int CURLOPT_SSL_CTX_FUNCTION ;
 int CURLOPT_SSL_VERIFYPEER ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURLOPT_WRITEDATA ;
 int CURLOPT_WRITEFUNCTION ;
 int CURL_GLOBAL_ALL ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,...) ;
 int curl_global_cleanup () ;
 int curl_global_init (int ) ;
 int printf (char*) ;
 long* sslctx_function ;
 long stderr ;
 long stdout ;
 long* writefunction ;

int main(void)
{
  CURL *ch;
  CURLcode rv;

  curl_global_init(CURL_GLOBAL_ALL);
  ch = curl_easy_init();
  curl_easy_setopt(ch, CURLOPT_VERBOSE, 0L);
  curl_easy_setopt(ch, CURLOPT_HEADER, 0L);
  curl_easy_setopt(ch, CURLOPT_NOPROGRESS, 1L);
  curl_easy_setopt(ch, CURLOPT_NOSIGNAL, 1L);
  curl_easy_setopt(ch, CURLOPT_WRITEFUNCTION, *writefunction);
  curl_easy_setopt(ch, CURLOPT_WRITEDATA, stdout);
  curl_easy_setopt(ch, CURLOPT_HEADERFUNCTION, *writefunction);
  curl_easy_setopt(ch, CURLOPT_HEADERDATA, stderr);
  curl_easy_setopt(ch, CURLOPT_SSLCERTTYPE, "PEM");
  curl_easy_setopt(ch, CURLOPT_SSL_VERIFYPEER, 1L);
  curl_easy_setopt(ch, CURLOPT_URL, "https://www.example.com/");





  curl_easy_setopt(ch, CURLOPT_CAINFO, ((void*)0));
  curl_easy_setopt(ch, CURLOPT_CAPATH, ((void*)0));




  rv = curl_easy_perform(ch);
  if(rv == CURLE_OK)
    printf("*** transfer succeeded ***\n");
  else
    printf("*** transfer failed ***\n");
  curl_easy_setopt(ch, CURLOPT_FRESH_CONNECT, 1L);





  curl_easy_setopt(ch, CURLOPT_SSL_CTX_FUNCTION, *sslctx_function);
  rv = curl_easy_perform(ch);
  if(rv == CURLE_OK)
    printf("*** transfer succeeded ***\n");
  else
    printf("*** transfer failed ***\n");

  curl_easy_cleanup(ch);
  curl_global_cleanup();
  return rv;
}
