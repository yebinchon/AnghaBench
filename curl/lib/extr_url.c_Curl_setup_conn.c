
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {void** tcpconnect; void* proxy_connect_closed; } ;
struct TYPE_9__ {int uagent; } ;
struct connectdata {scalar_t__* sock; void* now; TYPE_7__ bits; TYPE_6__* handler; TYPE_5__* ssl; int dns_entry; TYPE_2__ allocptr; struct Curl_easy* data; } ;
struct TYPE_11__ {scalar_t__ crlf_conversions; } ;
struct TYPE_10__ {scalar_t__ headerbytecount; } ;
struct TYPE_8__ {scalar_t__* str; } ;
struct Curl_easy {TYPE_4__ state; TYPE_3__ req; TYPE_1__ set; } ;
struct TYPE_13__ {int flags; int protocol; } ;
struct TYPE_12__ {scalar_t__ use; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 scalar_t__ CURL_SOCKET_BAD ;
 scalar_t__ Curl_connecthost (struct connectdata*,int ) ;
 void* Curl_now () ;
 int Curl_pgrsTime (struct Curl_easy*,int ) ;
 int Curl_safefree (int ) ;
 int Curl_updateconninfo (struct connectdata*,scalar_t__) ;
 int Curl_verboseconnect (struct connectdata*) ;
 void* FALSE ;
 size_t FIRSTSOCKET ;
 int PROTOPT_NONETWORK ;
 int PROTO_FAMILY_SSH ;
 size_t STRING_USERAGENT ;
 int TIMER_APPCONNECT ;
 int TIMER_CONNECT ;
 int TIMER_NAMELOOKUP ;
 void* TRUE ;
 int aprintf (char*,scalar_t__) ;

CURLcode Curl_setup_conn(struct connectdata *conn,
                         bool *protocol_done)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;

  Curl_pgrsTime(data, TIMER_NAMELOOKUP);

  if(conn->handler->flags & PROTOPT_NONETWORK) {

    *protocol_done = TRUE;
    return result;
  }
  *protocol_done = FALSE;





  conn->bits.proxy_connect_closed = FALSE;






  if(data->set.str[STRING_USERAGENT]) {
    Curl_safefree(conn->allocptr.uagent);
    conn->allocptr.uagent =
      aprintf("User-Agent: %s\r\n", data->set.str[STRING_USERAGENT]);
    if(!conn->allocptr.uagent)
      return CURLE_OUT_OF_MEMORY;
  }

  data->req.headerbytecount = 0;







  conn->now = Curl_now();

  if(CURL_SOCKET_BAD == conn->sock[FIRSTSOCKET]) {
    conn->bits.tcpconnect[FIRSTSOCKET] = FALSE;
    result = Curl_connecthost(conn, conn->dns_entry);
    if(result)
      return result;
  }
  else {
    Curl_pgrsTime(data, TIMER_CONNECT);
    if(conn->ssl[FIRSTSOCKET].use ||
       (conn->handler->protocol & PROTO_FAMILY_SSH))
      Curl_pgrsTime(data, TIMER_APPCONNECT);
    conn->bits.tcpconnect[FIRSTSOCKET] = TRUE;
    *protocol_done = TRUE;
    Curl_updateconninfo(conn, conn->sock[FIRSTSOCKET]);
    Curl_verboseconnect(conn);
  }

  conn->now = Curl_now();

  return result;
}
