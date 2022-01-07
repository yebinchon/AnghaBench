
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* do_more; } ;
struct connectdata {TYPE_2__* handler; TYPE_1__ bits; } ;
struct SingleRequest {void* ignorebody; int hbufp; int buf; scalar_t__ bytecount; int header; int start; int now; } ;
struct TYPE_8__ {int headerbuff; int buffer; void* expect100header; void* done; void* wildcardmatch; } ;
struct TYPE_7__ {scalar_t__ httpreq; scalar_t__ opt_no_body; } ;
struct Curl_easy {TYPE_4__ state; TYPE_3__ set; struct SingleRequest req; } ;
struct TYPE_6__ {int flags; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int Curl_now () ;
 int Curl_pgrsSetDownloadCounter (struct Curl_easy*,int ) ;
 int Curl_pgrsSetUploadCounter (struct Curl_easy*,int ) ;
 int Curl_speedinit (struct Curl_easy*) ;
 void* FALSE ;
 scalar_t__ HTTPREQ_GET ;
 scalar_t__ HTTPREQ_HEAD ;
 int PROTOPT_WILDCARD ;
 int TRUE ;

CURLcode Curl_init_do(struct Curl_easy *data, struct connectdata *conn)
{
  struct SingleRequest *k = &data->req;

  if(conn) {
    conn->bits.do_more = FALSE;


    if(data->state.wildcardmatch &&
       !(conn->handler->flags & PROTOPT_WILDCARD))
      data->state.wildcardmatch = FALSE;
  }

  data->state.done = FALSE;
  data->state.expect100header = FALSE;


  if(data->set.opt_no_body)

    data->set.httpreq = HTTPREQ_HEAD;
  else if(HTTPREQ_HEAD == data->set.httpreq)





    data->set.httpreq = HTTPREQ_GET;

  k->start = Curl_now();
  k->now = k->start;
  k->header = TRUE;

  k->bytecount = 0;

  k->buf = data->state.buffer;
  k->hbufp = data->state.headerbuff;
  k->ignorebody = FALSE;

  Curl_speedinit(data);

  Curl_pgrsSetUploadCounter(data, 0);
  Curl_pgrsSetDownloadCounter(data, 0);

  return CURLE_OK;
}
