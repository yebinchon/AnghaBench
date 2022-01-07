
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


struct pingpong {char* sendthis; int response; scalar_t__ sendleft; scalar_t__ sendsize; int conn; } ;
struct TYPE_8__ {struct pingpong pp; } ;
struct TYPE_9__ {TYPE_2__ smtpc; } ;
struct connectdata {int writesockfd; struct Curl_easy* data; TYPE_3__ proto; } ;
struct SMTP {int transfer; scalar_t__ trailing_crlf; int custom; } ;
struct TYPE_12__ {int infilesize; } ;
struct TYPE_10__ {scalar_t__ kind; } ;
struct TYPE_11__ {TYPE_4__ mimepost; scalar_t__ upload; scalar_t__ mail_rcpt; int connect_only; } ;
struct TYPE_7__ {struct SMTP* protop; } ;
struct Curl_easy {TYPE_6__ state; TYPE_5__ set; TYPE_1__ req; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 int Curl_now () ;
 int Curl_safefree (int ) ;
 scalar_t__ Curl_write (struct connectdata*,int ,char*,scalar_t__,scalar_t__*) ;
 int FALSE ;
 int FTPTRANSFER_BODY ;
 int * SMTP_EOB ;
 scalar_t__ SMTP_EOB_LEN ;
 int SMTP_POSTDATA ;
 int connclose (struct connectdata*,char*) ;
 int free (char*) ;
 scalar_t__ smtp_block_statemach (struct connectdata*,int ) ;
 int state (struct connectdata*,int ) ;
 char* strdup (int *) ;

__attribute__((used)) static CURLcode smtp_done(struct connectdata *conn, CURLcode status,
                          bool premature)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct SMTP *smtp = data->req.protop;
  struct pingpong *pp = &conn->proto.smtpc.pp;
  char *eob;
  ssize_t len;
  ssize_t bytes_written;

  (void)premature;

  if(!smtp || !pp->conn)
    return CURLE_OK;


  Curl_safefree(smtp->custom);

  if(status) {
    connclose(conn, "SMTP done with bad status");
    result = status;
  }
  else if(!data->set.connect_only && data->set.mail_rcpt &&
          (data->set.upload || data->set.mimepost.kind)) {
    if(smtp->trailing_crlf || !conn->data->state.infilesize) {
      eob = strdup(&SMTP_EOB[2]);
      len = SMTP_EOB_LEN - 2;
    }
    else {
      eob = strdup(SMTP_EOB);
      len = SMTP_EOB_LEN;
    }

    if(!eob)
      return CURLE_OUT_OF_MEMORY;


    result = Curl_write(conn, conn->writesockfd, eob, len, &bytes_written);
    if(result) {
      free(eob);
      return result;
    }

    if(bytes_written != len) {


      pp->sendthis = eob;
      pp->sendsize = len;
      pp->sendleft = len - bytes_written;
    }
    else {

      pp->response = Curl_now();

      free(eob);
    }

    state(conn, SMTP_POSTDATA);


    result = smtp_block_statemach(conn, FALSE);
  }


  smtp->transfer = FTPTRANSFER_BODY;

  return result;
}
