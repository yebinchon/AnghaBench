
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int* tcpconnect; } ;
struct connectdata {struct Curl_easy* data; TYPE_4__ bits; } ;
struct SMTP {int eob; int trailing_crlf; scalar_t__ rcpt; int transfer; } ;
struct TYPE_6__ {scalar_t__ kind; } ;
struct TYPE_7__ {scalar_t__ mail_rcpt; TYPE_2__ mimepost; scalar_t__ upload; scalar_t__ opt_no_body; } ;
struct TYPE_5__ {struct SMTP* protop; } ;
struct Curl_easy {TYPE_3__ set; TYPE_1__ req; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 int DEBUGF (int ) ;
 int FALSE ;
 size_t FIRSTSOCKET ;
 int FTPTRANSFER_INFO ;
 int TRUE ;
 int infof (struct Curl_easy*,char*) ;
 scalar_t__ smtp_multi_statemach (struct connectdata*,int*) ;
 scalar_t__ smtp_perform_command (struct connectdata*) ;
 scalar_t__ smtp_perform_mail (struct connectdata*) ;

__attribute__((used)) static CURLcode smtp_perform(struct connectdata *conn, bool *connected,
                             bool *dophase_done)
{

  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct SMTP *smtp = data->req.protop;

  DEBUGF(infof(conn->data, "DO phase starts\n"));

  if(data->set.opt_no_body) {

    smtp->transfer = FTPTRANSFER_INFO;
  }

  *dophase_done = FALSE;


  smtp->rcpt = data->set.mail_rcpt;



  smtp->trailing_crlf = TRUE;
  smtp->eob = 2;


  if((data->set.upload || data->set.mimepost.kind) && data->set.mail_rcpt)

    result = smtp_perform_mail(conn);
  else

    result = smtp_perform_command(conn);

  if(result)
    return result;


  result = smtp_multi_statemach(conn, dophase_done);

  *connected = conn->bits.tcpconnect[FIRSTSOCKET];

  if(*dophase_done)
    DEBUGF(infof(conn->data, "DO phase is complete\n"));

  return result;
}
