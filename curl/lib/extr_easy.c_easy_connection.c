
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {int dummy; } ;
struct TYPE_2__ {int connect_only; } ;
struct Curl_easy {TYPE_1__ set; } ;
typedef scalar_t__ curl_socket_t ;
typedef int CURLcode ;


 int CURLE_BAD_FUNCTION_ARGUMENT ;
 int CURLE_OK ;
 int CURLE_UNSUPPORTED_PROTOCOL ;
 scalar_t__ CURL_SOCKET_BAD ;
 scalar_t__ Curl_getconnectinfo (struct Curl_easy*,struct connectdata**) ;
 int failf (struct Curl_easy*,char*) ;

__attribute__((used)) static CURLcode easy_connection(struct Curl_easy *data,
                                curl_socket_t *sfd,
                                struct connectdata **connp)
{
  if(data == ((void*)0))
    return CURLE_BAD_FUNCTION_ARGUMENT;


  if(!data->set.connect_only) {
    failf(data, "CONNECT_ONLY is required!");
    return CURLE_UNSUPPORTED_PROTOCOL;
  }

  *sfd = Curl_getconnectinfo(data, connp);

  if(*sfd == CURL_SOCKET_BAD) {
    failf(data, "Failed to get recent socket");
    return CURLE_UNSUPPORTED_PROTOCOL;
  }

  return CURLE_OK;
}
