
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


struct TYPE_10__ {void* retry; scalar_t__ reuse; } ;
struct connectdata {TYPE_5__* handler; TYPE_4__ bits; struct Curl_easy* data; } ;
struct TYPE_12__ {scalar_t__ bytecount; scalar_t__ headerbytecount; scalar_t__ writebytecount; } ;
struct TYPE_9__ {int url; } ;
struct TYPE_8__ {void* refused_stream; } ;
struct TYPE_7__ {scalar_t__ rtspreq; int opt_no_body; scalar_t__ upload; } ;
struct Curl_easy {TYPE_6__ req; TYPE_3__ change; TYPE_2__ state; TYPE_1__ set; } ;
struct TYPE_11__ {int protocol; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 int CURLPROTO_RTSP ;
 scalar_t__ Curl_readrewind (struct connectdata*) ;
 int Curl_safefree (char*) ;
 void* FALSE ;
 int PROTO_FAMILY_HTTP ;
 scalar_t__ RTSPREQ_RECEIVE ;
 void* TRUE ;
 int connclose (struct connectdata*,char*) ;
 int infof (struct Curl_easy*,char*) ;
 char* strdup (int ) ;

CURLcode Curl_retry_request(struct connectdata *conn,
                            char **url)
{
  struct Curl_easy *data = conn->data;
  bool retry = FALSE;
  *url = ((void*)0);



  if(data->set.upload &&
     !(conn->handler->protocol&(PROTO_FAMILY_HTTP|CURLPROTO_RTSP)))
    return CURLE_OK;

  if((data->req.bytecount + data->req.headerbytecount == 0) &&
      conn->bits.reuse &&
      (!data->set.opt_no_body
        || (conn->handler->protocol & PROTO_FAMILY_HTTP)) &&
      (data->set.rtspreq != RTSPREQ_RECEIVE))







    retry = TRUE;
  else if(data->state.refused_stream &&
          (data->req.bytecount + data->req.headerbytecount == 0) ) {





    infof(conn->data, "REFUSED_STREAM, retrying a fresh connect\n");
    data->state.refused_stream = FALSE;
    retry = TRUE;
  }
  if(retry) {
    infof(conn->data, "Connection died, retrying a fresh connect\n");
    *url = strdup(conn->data->change.url);
    if(!*url)
      return CURLE_OUT_OF_MEMORY;

    connclose(conn, "retry");
    conn->bits.retry = TRUE;






    if(conn->handler->protocol&PROTO_FAMILY_HTTP) {
      if(data->req.writebytecount) {
        CURLcode result = Curl_readrewind(conn);
        if(result) {
          Curl_safefree(*url);
          return result;
        }
      }
    }
  }
  return CURLE_OK;
}
