
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct connectdata {int transport; TYPE_2__* handler; struct Curl_easy* data; } ;
struct HTTP {int form; } ;
struct TYPE_4__ {scalar_t__ httpversion; } ;
struct TYPE_6__ {struct HTTP* protop; } ;
struct Curl_easy {TYPE_1__ set; TYPE_3__ req; } ;
struct TYPE_5__ {int flags; } ;
typedef int CURLcode ;


 int CONN_INUSE (struct connectdata*) ;
 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int CURLE_URL_MALFORMAT ;
 scalar_t__ CURL_HTTP_VERSION_3 ;
 int Curl_http2_setup_conn (struct connectdata*) ;
 int Curl_http2_setup_req (struct Curl_easy*) ;
 int Curl_mime_initpart (int *,struct Curl_easy*) ;
 int DEBUGASSERT (int ) ;
 int PROTOPT_SSL ;
 int TRNSPRT_QUIC ;
 struct HTTP* calloc (int,int) ;
 int failf (struct Curl_easy*,char*) ;

__attribute__((used)) static CURLcode http_setup_conn(struct connectdata *conn)
{


  struct HTTP *http;
  struct Curl_easy *data = conn->data;
  DEBUGASSERT(data->req.protop == ((void*)0));

  http = calloc(1, sizeof(struct HTTP));
  if(!http)
    return CURLE_OUT_OF_MEMORY;

  Curl_mime_initpart(&http->form, conn->data);
  data->req.protop = http;

  if(data->set.httpversion == CURL_HTTP_VERSION_3) {
    if(conn->handler->flags & PROTOPT_SSL)


      conn->transport = TRNSPRT_QUIC;
    else {
      failf(data, "HTTP/3 requested for non-HTTPS URL");
      return CURLE_URL_MALFORMAT;
    }
  }
  else {
    if(!CONN_INUSE(conn))

      Curl_http2_setup_conn(conn);
    Curl_http2_setup_req(data);
  }
  return CURLE_OK;
}
