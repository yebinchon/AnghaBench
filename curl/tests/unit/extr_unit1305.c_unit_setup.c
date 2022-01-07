
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int Curl_mk_dnscache (int *) ;
 int curl_easy_cleanup (int ) ;
 int curl_easy_init () ;
 int curl_global_cleanup () ;
 int data ;
 int hp ;

__attribute__((used)) static CURLcode unit_setup(void)
{
  int rc;
  data = curl_easy_init();
  if(!data)
    return CURLE_OUT_OF_MEMORY;

  rc = Curl_mk_dnscache(&hp);
  if(rc) {
    curl_easy_cleanup(data);
    curl_global_cleanup();
    return CURLE_OUT_OF_MEMORY;
  }
  return CURLE_OK;
}
