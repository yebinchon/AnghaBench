
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int close; int * proxy_ssl_connected; } ;
struct TYPE_3__ {scalar_t__ proxytype; } ;
struct connectdata {TYPE_2__ bits; TYPE_1__ http_proxy; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_NOT_BUILT_IN ;
 scalar_t__ CURLE_OK ;
 scalar_t__ CURLPROXY_HTTPS ;
 scalar_t__ Curl_ssl_connect_nonblocking (struct connectdata*,int,int *) ;
 int DEBUGASSERT (int) ;
 int TRUE ;

__attribute__((used)) static CURLcode https_proxy_connect(struct connectdata *conn, int sockindex)
{
  (void) conn;
  (void) sockindex;
  return CURLE_NOT_BUILT_IN;

}
