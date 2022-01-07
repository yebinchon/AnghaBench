
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int rewindaftersend; } ;
struct connectdata {TYPE_2__* handler; TYPE_1__ bits; struct Curl_easy* data; } ;
struct HTTP {int * sendit; } ;
struct TYPE_10__ {scalar_t__ fread_func; int in; } ;
struct TYPE_9__ {scalar_t__ httpreq; int (* seek_func ) (int ,int ,int ) ;int ioctl_client; scalar_t__ (* ioctl_func ) (struct Curl_easy*,int ,int ) ;int seek_client; scalar_t__ postfields; int mimepost; } ;
struct TYPE_8__ {struct HTTP* protop; int keepon; } ;
struct Curl_easy {TYPE_5__ state; TYPE_4__ set; TYPE_3__ req; } ;
typedef scalar_t__ curlioerr ;
typedef scalar_t__ curl_read_callback ;
typedef int curl_mimepart ;
struct TYPE_7__ {int protocol; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_SEND_FAIL_REWIND ;
 int CURLIOCMD_RESTARTREAD ;
 scalar_t__ Curl_mime_rewind (int *) ;
 int Curl_set_in_callback (struct Curl_easy*,int) ;
 int FALSE ;
 scalar_t__ HTTPREQ_POST_FORM ;
 scalar_t__ HTTPREQ_POST_MIME ;
 int KEEP_SEND ;
 int PROTO_FAMILY_HTTP ;
 int SEEK_SET ;
 int failf (struct Curl_easy*,char*,...) ;
 scalar_t__ fread ;
 int fseek (int ,int ,int ) ;
 int infof (struct Curl_easy*,char*,int) ;
 int stub1 (int ,int ,int ) ;
 scalar_t__ stub2 (struct Curl_easy*,int ,int ) ;

CURLcode Curl_readrewind(struct connectdata *conn)
{
  struct Curl_easy *data = conn->data;
  curl_mimepart *mimepart = &data->set.mimepost;

  conn->bits.rewindaftersend = FALSE;





  data->req.keepon &= ~KEEP_SEND;




  if(conn->handler->protocol & PROTO_FAMILY_HTTP) {
    struct HTTP *http = data->req.protop;

    if(http->sendit)
      mimepart = http->sendit;
  }
  if(data->set.postfields)
    ;
  else if(data->set.httpreq == HTTPREQ_POST_MIME ||
          data->set.httpreq == HTTPREQ_POST_FORM) {
    if(Curl_mime_rewind(mimepart)) {
      failf(data, "Cannot rewind mime/post data");
      return CURLE_SEND_FAIL_REWIND;
    }
  }
  else {
    if(data->set.seek_func) {
      int err;

      Curl_set_in_callback(data, 1);
      err = (data->set.seek_func)(data->set.seek_client, 0, SEEK_SET);
      Curl_set_in_callback(data, 0);
      if(err) {
        failf(data, "seek callback returned error %d", (int)err);
        return CURLE_SEND_FAIL_REWIND;
      }
    }
    else if(data->set.ioctl_func) {
      curlioerr err;

      Curl_set_in_callback(data, 1);
      err = (data->set.ioctl_func)(data, CURLIOCMD_RESTARTREAD,
                                   data->set.ioctl_client);
      Curl_set_in_callback(data, 0);
      infof(data, "the ioctl callback returned %d\n", (int)err);

      if(err) {
        failf(data, "ioctl callback returned error %d", (int)err);
        return CURLE_SEND_FAIL_REWIND;
      }
    }
    else {



      if(data->state.fread_func == (curl_read_callback)fread) {
        if(-1 != fseek(data->state.in, 0, SEEK_SET))

          return CURLE_OK;
      }


      failf(data, "necessary data rewind wasn't possible");
      return CURLE_SEND_FAIL_REWIND;
    }
  }
  return CURLE_OK;
}
