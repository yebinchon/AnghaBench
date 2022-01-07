
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_easy {int dummy; } ;
typedef int curl_socket_t ;
typedef int CURLcode ;
typedef int CURLINFO ;


 int CURLE_OK ;
 int CURLE_UNKNOWN_OPTION ;

 int Curl_getconnectinfo (struct Curl_easy*,int *) ;

__attribute__((used)) static CURLcode getinfo_socket(struct Curl_easy *data, CURLINFO info,
                               curl_socket_t *param_socketp)
{
  switch(info) {
  case 128:
    *param_socketp = Curl_getconnectinfo(data, ((void*)0));
    break;
  default:
    return CURLE_UNKNOWN_OPTION;
  }

  return CURLE_OK;
}
