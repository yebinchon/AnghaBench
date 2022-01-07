
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pp; } ;
struct TYPE_7__ {TYPE_2__ smtpc; } ;
struct connectdata {TYPE_3__ proto; struct Curl_easy* data; } ;
struct SMTP {TYPE_1__* rcpt; } ;
struct TYPE_8__ {struct SMTP* protop; } ;
struct Curl_easy {TYPE_4__ req; } ;
typedef int smtpstate ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_SEND_ERROR ;
 int Curl_pp_sendf (int *,char*,char*) ;
 int SMTP_DATA ;
 int failf (struct Curl_easy*,char*,int) ;
 int smtp_perform_rcpt_to (struct connectdata*) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode smtp_state_rcpt_resp(struct connectdata *conn, int smtpcode,
                                     smtpstate instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct SMTP *smtp = data->req.protop;

  (void)instate;

  if(smtpcode/100 != 2) {
    failf(data, "RCPT failed: %d", smtpcode);
    result = CURLE_SEND_ERROR;
  }
  else {
    smtp->rcpt = smtp->rcpt->next;

    if(smtp->rcpt)

      result = smtp_perform_rcpt_to(conn);
    else {

      result = Curl_pp_sendf(&conn->proto.smtpc.pp, "%s", "DATA");

      if(!result)
        state(conn, SMTP_DATA);
    }
  }

  return result;
}
