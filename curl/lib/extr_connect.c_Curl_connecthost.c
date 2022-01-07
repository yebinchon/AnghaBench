
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int timediff_t ;
struct curltime {int dummy; } ;
struct connectdata {scalar_t__* tempsock; int timeoutms_per_addr; struct Curl_easy* data; TYPE_3__** tempaddr; int num_addr; } ;
struct TYPE_6__ {int happy_eyeballs_timeout; } ;
struct TYPE_5__ {int numconnects; } ;
struct Curl_easy {TYPE_2__ set; TYPE_1__ info; } ;
struct Curl_dns_entry {TYPE_3__* addr; } ;
struct TYPE_7__ {struct TYPE_7__* ai_next; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_COULDNT_CONNECT ;
 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OPERATION_TIMEDOUT ;
 scalar_t__ CURL_SOCKET_BAD ;
 int Curl_expire (struct Curl_easy*,int ,int ) ;
 struct curltime Curl_now () ;
 int Curl_num_addresses (TYPE_3__*) ;
 int Curl_timeleft (struct Curl_easy*,struct curltime*,int ) ;
 int EXPIRE_HAPPY_EYEBALLS ;
 int TRUE ;
 int failf (struct Curl_easy*,char*) ;
 scalar_t__ singleipconnect (struct connectdata*,TYPE_3__*,int ) ;

CURLcode Curl_connecthost(struct connectdata *conn,
                          const struct Curl_dns_entry *remotehost)
{
  struct Curl_easy *data = conn->data;
  struct curltime before = Curl_now();
  CURLcode result = CURLE_COULDNT_CONNECT;

  timediff_t timeout_ms = Curl_timeleft(data, &before, TRUE);

  if(timeout_ms < 0) {

    failf(data, "Connection time-out");
    return CURLE_OPERATION_TIMEDOUT;
  }

  conn->num_addr = Curl_num_addresses(remotehost->addr);
  conn->tempaddr[0] = remotehost->addr;
  conn->tempaddr[1] = ((void*)0);
  conn->tempsock[0] = CURL_SOCKET_BAD;
  conn->tempsock[1] = CURL_SOCKET_BAD;


  conn->timeoutms_per_addr =
    conn->tempaddr[0]->ai_next == ((void*)0) ? timeout_ms : timeout_ms / 2;


  while(conn->tempaddr[0]) {
    result = singleipconnect(conn, conn->tempaddr[0], 0);
    if(!result)
      break;
    conn->tempaddr[0] = conn->tempaddr[0]->ai_next;
  }

  if(conn->tempsock[0] == CURL_SOCKET_BAD) {
    if(!result)
      result = CURLE_COULDNT_CONNECT;
    return result;
  }

  data->info.numconnects++;
  Curl_expire(conn->data, data->set.happy_eyeballs_timeout,
              EXPIRE_HAPPY_EYEBALLS);

  return CURLE_OK;
}
