
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int CURLOPT_DEBUGFUNCTION ;
 int CURLOPT_VERBOSE ;
 int CURL_GLOBAL_ALL ;
 int curl_easy_init () ;
 int curl_easy_setopt (int ,int ,long) ;
 int data ;
 long debugf_cb ;
 int global_init (int ) ;

__attribute__((used)) static CURLcode
unit_setup(void)
{
  int res = 0;

  global_init(CURL_GLOBAL_ALL);
  data = curl_easy_init();
  if(!data)
    return CURLE_OUT_OF_MEMORY;
  curl_easy_setopt(data, CURLOPT_DEBUGFUNCTION, debugf_cb);
  curl_easy_setopt(data, CURLOPT_VERBOSE, 1L);
  return CURLE_OK;
}
