
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ multiplex; } ;
struct connectdata {int httpversion; void** sock; TYPE_2__* handler; void* writesockfd; void* sockfd; TYPE_1__ bits; } ;
struct SingleRequest {int getheader; int keepon; int exp100; int start100; struct HTTP* protop; int header; scalar_t__ size; } ;
struct HTTP {scalar_t__ sending; } ;
struct TYPE_8__ {scalar_t__ expect100header; } ;
struct TYPE_7__ {int expect_100_timeout; int opt_no_body; } ;
struct Curl_easy {TYPE_4__ state; TYPE_3__ set; struct SingleRequest req; struct connectdata* conn; } ;
typedef scalar_t__ curl_off_t ;
struct TYPE_6__ {int protocol; } ;


 void* CURL_SOCKET_BAD ;
 int Curl_expire (struct Curl_easy*,int ,int ) ;
 int Curl_now () ;
 int Curl_pgrsSetDownloadSize (struct Curl_easy*,scalar_t__) ;
 int DEBUGASSERT (int) ;
 int EXP100_AWAITING_CONTINUE ;
 int EXP100_SENDING_REQUEST ;
 int EXPIRE_100_TIMEOUT ;
 int FALSE ;
 scalar_t__ HTTPSEND_BODY ;
 int KEEP_RECV ;
 int KEEP_SEND ;
 int PROTO_FAMILY_HTTP ;

void
Curl_setup_transfer(
  struct Curl_easy *data,
  int sockindex,
  curl_off_t size,
  bool getheader,
  int writesockindex

  )
{
  struct SingleRequest *k = &data->req;
  struct connectdata *conn = data->conn;
  DEBUGASSERT(conn != ((void*)0));
  DEBUGASSERT((sockindex <= 1) && (sockindex >= -1));

  if(conn->bits.multiplex || conn->httpversion == 20) {

    conn->sockfd = sockindex == -1 ?
      ((writesockindex == -1 ? CURL_SOCKET_BAD : conn->sock[writesockindex])) :
      conn->sock[sockindex];
    conn->writesockfd = conn->sockfd;
  }
  else {
    conn->sockfd = sockindex == -1 ?
      CURL_SOCKET_BAD : conn->sock[sockindex];
    conn->writesockfd = writesockindex == -1 ?
      CURL_SOCKET_BAD:conn->sock[writesockindex];
  }
  k->getheader = getheader;

  k->size = size;





  if(!k->getheader) {
    k->header = FALSE;
    if(size > 0)
      Curl_pgrsSetDownloadSize(data, size);
  }

  if(k->getheader || !data->set.opt_no_body) {

    if(sockindex != -1)
      k->keepon |= KEEP_RECV;

    if(writesockindex != -1) {
      struct HTTP *http = data->req.protop;
      if((data->state.expect100header) &&
         (conn->handler->protocol&PROTO_FAMILY_HTTP) &&
         (http->sending == HTTPSEND_BODY)) {

        k->exp100 = EXP100_AWAITING_CONTINUE;
        k->start100 = Curl_now();



        Curl_expire(data, data->set.expect_100_timeout, EXPIRE_100_TIMEOUT);
      }
      else {
        if(data->state.expect100header)


          k->exp100 = EXP100_SENDING_REQUEST;


        k->keepon |= KEEP_SEND;
      }
    }
  }

}
