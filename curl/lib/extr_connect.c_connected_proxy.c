
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int socksproxy_connecting; scalar_t__ conn_to_port; scalar_t__ httpproxy; scalar_t__ conn_to_host; scalar_t__ socksproxy; } ;
struct TYPE_11__ {int proxytype; int user; int passwd; } ;
struct TYPE_7__ {char* name; } ;
struct TYPE_10__ {scalar_t__ port; TYPE_1__ host; } ;
struct TYPE_9__ {char* name; } ;
struct TYPE_8__ {char* name; } ;
struct connectdata {char* secondaryhostname; int secondary_port; int conn_to_port; int remote_port; TYPE_6__ bits; int data; TYPE_5__ socks_proxy; TYPE_4__ http_proxy; TYPE_3__ host; TYPE_2__ conn_to_host; } ;
typedef int CURLcode ;


 int CURLE_COULDNT_CONNECT ;
 int CURLE_OK ;




 int Curl_SOCKS4 (int ,char const* const,int const,int,struct connectdata*) ;
 int Curl_SOCKS5 (int ,int ,char const* const,int const,int,struct connectdata*) ;
 int FALSE ;
 int SECONDARYSOCKET ;
 int TRUE ;
 int failf (int ,char*) ;

__attribute__((used)) static CURLcode connected_proxy(struct connectdata *conn, int sockindex)
{
  CURLcode result = CURLE_OK;

  if(conn->bits.socksproxy) {




    const char * const host = conn->bits.httpproxy ?
                              conn->http_proxy.host.name :
                              conn->bits.conn_to_host ?
                              conn->conn_to_host.name :
                              sockindex == SECONDARYSOCKET ?
                              conn->secondaryhostname : conn->host.name;
    const int port = conn->bits.httpproxy ? (int)conn->http_proxy.port :
                     sockindex == SECONDARYSOCKET ? conn->secondary_port :
                     conn->bits.conn_to_port ? conn->conn_to_port :
                     conn->remote_port;
    conn->bits.socksproxy_connecting = TRUE;
    switch(conn->socks_proxy.proxytype) {
    case 129:
    case 128:
      result = Curl_SOCKS5(conn->socks_proxy.user, conn->socks_proxy.passwd,
                         host, port, sockindex, conn);
      break;

    case 131:
    case 130:
      result = Curl_SOCKS4(conn->socks_proxy.user, host, port, sockindex,
                           conn);
      break;

    default:
      failf(conn->data, "unknown proxytype option given");
      result = CURLE_COULDNT_CONNECT;
    }
    conn->bits.socksproxy_connecting = FALSE;



  }

  return result;
}
