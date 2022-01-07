
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;
typedef int CURLUcode ;


 int CURLE_LOGIN_DENIED ;
 int CURLE_OUT_OF_MEMORY ;
 int CURLE_UNSUPPORTED_PROTOCOL ;
 int CURLE_URL_MALFORMAT ;




CURLcode Curl_uc_to_curlcode(CURLUcode uc)
{
  switch(uc) {
  default:
    return CURLE_URL_MALFORMAT;
  case 129:
    return CURLE_UNSUPPORTED_PROTOCOL;
  case 130:
    return CURLE_OUT_OF_MEMORY;
  case 128:
    return CURLE_LOGIN_DENIED;
  }
}
