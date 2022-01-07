
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


struct TYPE_10__ {int retry; } ;
struct connectdata {TYPE_4__ bits; int seek_client; int seek_func; struct Curl_easy* data; } ;
struct HTTP {int form; scalar_t__ send_buffer; } ;
struct TYPE_12__ {scalar_t__ bytecount; scalar_t__ headerbytecount; scalar_t__ deductheadercount; struct HTTP* protop; } ;
struct TYPE_11__ {int connect_only; int seek_client; int seek_func; } ;
struct TYPE_8__ {void* multipass; } ;
struct TYPE_7__ {void* multipass; } ;
struct TYPE_9__ {TYPE_2__ authproxy; TYPE_1__ authhost; } ;
struct Curl_easy {TYPE_6__ req; TYPE_5__ set; TYPE_3__ state; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_GOT_NOTHING ;
 scalar_t__ CURLE_OK ;
 int Curl_add_buffer_free (scalar_t__*) ;
 int Curl_http2_done (struct connectdata*,int) ;
 int Curl_mime_cleanpart (int *) ;
 int Curl_unencode_cleanup (struct connectdata*) ;
 void* FALSE ;
 int failf (struct Curl_easy*,char*) ;

CURLcode Curl_http_done(struct connectdata *conn,
                        CURLcode status, bool premature)
{
  struct Curl_easy *data = conn->data;
  struct HTTP *http = data->req.protop;



  data->state.authhost.multipass = FALSE;
  data->state.authproxy.multipass = FALSE;

  Curl_unencode_cleanup(conn);


  conn->seek_func = data->set.seek_func;
  conn->seek_client = data->set.seek_client;

  if(!http)
    return CURLE_OK;

  if(http->send_buffer) {
    Curl_add_buffer_free(&http->send_buffer);
  }

  Curl_http2_done(conn, premature);

  Curl_mime_cleanpart(&http->form);

  if(status)
    return status;

  if(!premature &&

     !conn->bits.retry &&
     !data->set.connect_only &&
     (data->req.bytecount +
      data->req.headerbytecount -
      data->req.deductheadercount) <= 0) {



    failf(data, "Empty reply from server");
    return CURLE_GOT_NOTHING;
  }

  return CURLE_OK;
}
