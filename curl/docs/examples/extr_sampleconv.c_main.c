
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURL ;


 int CURLOPT_CONV_FROM_NETWORK_FUNCTION ;
 int CURLOPT_CONV_FROM_UTF8_FUNCTION ;
 int CURLOPT_CONV_TO_NETWORK_FUNCTION ;
 int CURLOPT_URL ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,char*) ;
 char* my_conv_from_ascii_to_ebcdic ;
 char* my_conv_from_ebcdic_to_ascii ;
 char* my_conv_from_utf8_to_ebcdic ;

int main(void)
{
  CURL *curl;

  curl = curl_easy_init();
  if(curl) {
    curl_easy_setopt(curl, CURLOPT_URL, "https://example.com");


    curl_easy_setopt(curl, CURLOPT_CONV_FROM_NETWORK_FUNCTION,
                     my_conv_from_ascii_to_ebcdic);
    curl_easy_setopt(curl, CURLOPT_CONV_TO_NETWORK_FUNCTION,
                     my_conv_from_ebcdic_to_ascii);
    curl_easy_setopt(curl, CURLOPT_CONV_FROM_UTF8_FUNCTION,
                     my_conv_from_utf8_to_ebcdic);

    curl_easy_perform(curl);


    curl_easy_cleanup(curl);
  }
  return 0;
}
