#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  rewindaftersend; } ;
struct connectdata {TYPE_2__* handler; TYPE_1__ bits; struct Curl_easy* data; } ;
struct HTTP {int /*<<< orphan*/ * sendit; } ;
struct TYPE_10__ {scalar_t__ fread_func; int /*<<< orphan*/  in; } ;
struct TYPE_9__ {scalar_t__ httpreq; int (* seek_func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  ioctl_client; scalar_t__ (* ioctl_func ) (struct Curl_easy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  seek_client; scalar_t__ postfields; int /*<<< orphan*/  mimepost; } ;
struct TYPE_8__ {struct HTTP* protop; int /*<<< orphan*/  keepon; } ;
struct Curl_easy {TYPE_5__ state; TYPE_4__ set; TYPE_3__ req; } ;
typedef  scalar_t__ curlioerr ;
typedef  scalar_t__ curl_read_callback ;
typedef  int /*<<< orphan*/  curl_mimepart ;
struct TYPE_7__ {int protocol; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_SEND_FAIL_REWIND ; 
 int /*<<< orphan*/  CURLIOCMD_RESTARTREAD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct Curl_easy*,int) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ HTTPREQ_POST_FORM ; 
 scalar_t__ HTTPREQ_POST_MIME ; 
 int /*<<< orphan*/  KEEP_SEND ; 
 int PROTO_FAMILY_HTTP ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (struct Curl_easy*,char*,...) ; 
 scalar_t__ fread ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct Curl_easy*,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct Curl_easy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

CURLcode FUNC7(struct connectdata *conn)
{
  struct Curl_easy *data = conn->data;
  curl_mimepart *mimepart = &data->set.mimepost;

  conn->bits.rewindaftersend = FALSE; /* we rewind now */

  /* explicitly switch off sending data on this connection now since we are
     about to restart a new transfer and thus we want to avoid inadvertently
     sending more data on the existing connection until the next transfer
     starts */
  data->req.keepon &= ~KEEP_SEND;

  /* We have sent away data. If not using CURLOPT_POSTFIELDS or
     CURLOPT_HTTPPOST, call app to rewind
  */
  if(conn->handler->protocol & PROTO_FAMILY_HTTP) {
    struct HTTP *http = data->req.protop;

    if(http->sendit)
      mimepart = http->sendit;
  }
  if(data->set.postfields)
    ; /* do nothing */
  else if(data->set.httpreq == HTTPREQ_POST_MIME ||
          data->set.httpreq == HTTPREQ_POST_FORM) {
    if(FUNC0(mimepart)) {
      FUNC2(data, "Cannot rewind mime/post data");
      return CURLE_SEND_FAIL_REWIND;
    }
  }
  else {
    if(data->set.seek_func) {
      int err;

      FUNC1(data, true);
      err = (data->set.seek_func)(data->set.seek_client, 0, SEEK_SET);
      FUNC1(data, false);
      if(err) {
        FUNC2(data, "seek callback returned error %d", (int)err);
        return CURLE_SEND_FAIL_REWIND;
      }
    }
    else if(data->set.ioctl_func) {
      curlioerr err;

      FUNC1(data, true);
      err = (data->set.ioctl_func)(data, CURLIOCMD_RESTARTREAD,
                                   data->set.ioctl_client);
      FUNC1(data, false);
      FUNC4(data, "the ioctl callback returned %d\n", (int)err);

      if(err) {
        FUNC2(data, "ioctl callback returned error %d", (int)err);
        return CURLE_SEND_FAIL_REWIND;
      }
    }
    else {
      /* If no CURLOPT_READFUNCTION is used, we know that we operate on a
         given FILE * stream and we can actually attempt to rewind that
         ourselves with fseek() */
      if(data->state.fread_func == (curl_read_callback)fread) {
        if(-1 != FUNC3(data->state.in, 0, SEEK_SET))
          /* successful rewind */
          return CURLE_OK;
      }

      /* no callback set or failure above, makes us fail at once */
      FUNC2(data, "necessary data rewind wasn't possible");
      return CURLE_SEND_FAIL_REWIND;
    }
  }
  return CURLE_OK;
}