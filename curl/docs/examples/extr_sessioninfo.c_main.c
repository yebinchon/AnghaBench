
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CURLOPT_SSL_VERIFYHOST ;
 int CURLOPT_SSL_VERIFYPEER ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURLOPT_WRITEFUNCTION ;
 int CURL_GLOBAL_DEFAULT ;
 scalar_t__ curl ;
 int curl_easy_cleanup (scalar_t__) ;
 scalar_t__ curl_easy_init () ;
 int curl_easy_perform (scalar_t__) ;
 int curl_easy_setopt (scalar_t__,int ,...) ;
 int curl_global_cleanup () ;
 int curl_global_init (int ) ;
 long wrfu ;

int main(void)
{
  curl_global_init(CURL_GLOBAL_DEFAULT);

  curl = curl_easy_init();
  if(curl) {
    curl_easy_setopt(curl, CURLOPT_URL, "https://www.example.com/");

    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, wrfu);

    curl_easy_setopt(curl, CURLOPT_SSL_VERIFYPEER, 0L);
    curl_easy_setopt(curl, CURLOPT_SSL_VERIFYHOST, 0L);

    curl_easy_setopt(curl, CURLOPT_VERBOSE, 0L);

    (void) curl_easy_perform(curl);

    curl_easy_cleanup(curl);
  }

  curl_global_cleanup();

  return 0;
}
