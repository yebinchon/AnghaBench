
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ proxy_connect_closed; } ;
struct connectdata {TYPE_4__* given; TYPE_3__* data; TYPE_1__ bits; } ;
struct TYPE_8__ {int protocol; } ;
struct TYPE_6__ {scalar_t__ haproxyprotocol; } ;
struct TYPE_7__ {TYPE_2__ set; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CONNECT_FIRSTSOCKET_PROXY_SSL () ;
 scalar_t__ CURLE_OK ;
 int CURLPROTO_HTTPS ;
 scalar_t__ Curl_connect_ongoing (struct connectdata*) ;
 scalar_t__ Curl_proxy_connect (struct connectdata*,int ) ;
 int FIRSTSOCKET ;
 int TRUE ;
 scalar_t__ add_haproxy_protocol_header (struct connectdata*) ;
 int connkeep (struct connectdata*,char*) ;
 scalar_t__ https_connecting (struct connectdata*,int*) ;

CURLcode Curl_http_connect(struct connectdata *conn, bool *done)
{
  CURLcode result;



  connkeep(conn, "HTTP default");


  result = Curl_proxy_connect(conn, FIRSTSOCKET);
  if(result)
    return result;

  if(conn->bits.proxy_connect_closed)

    return CURLE_OK;

  if(CONNECT_FIRSTSOCKET_PROXY_SSL())
    return CURLE_OK;

  if(Curl_connect_ongoing(conn))

    return CURLE_OK;


  if(conn->data->set.haproxyprotocol) {

    result = add_haproxy_protocol_header(conn);
    if(result)
      return result;
  }


  if(conn->given->protocol & CURLPROTO_HTTPS) {

    result = https_connecting(conn, done);
    if(result)
      return result;
  }
  else
    *done = TRUE;

  return CURLE_OK;
}
