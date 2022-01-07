
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct connectdata {struct Curl_easy* data; } ;
struct SMTP {TYPE_4__* rcpt; } ;
struct TYPE_7__ {int opt_no_body; } ;
struct TYPE_6__ {char* buffer; } ;
struct TYPE_5__ {struct SMTP* protop; } ;
struct Curl_easy {TYPE_3__ set; TYPE_2__ state; TYPE_1__ req; } ;
typedef int smtpstate ;
struct TYPE_8__ {struct TYPE_8__* next; } ;
typedef int CURLcode ;


 int CLIENTWRITE_BODY ;
 int CURLE_OK ;
 int CURLE_RECV_ERROR ;
 int Curl_client_write (struct connectdata*,int ,char*,size_t) ;
 int SMTP_STOP ;
 int failf (struct Curl_easy*,char*,int) ;
 int smtp_perform_command (struct connectdata*) ;
 int state (struct connectdata*,int ) ;
 size_t strlen (char*) ;

__attribute__((used)) static CURLcode smtp_state_command_resp(struct connectdata *conn, int smtpcode,
                                        smtpstate instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct SMTP *smtp = data->req.protop;
  char *line = data->state.buffer;
  size_t len = strlen(line);

  (void)instate;

  if((smtp->rcpt && smtpcode/100 != 2 && smtpcode != 553 && smtpcode != 1) ||
     (!smtp->rcpt && smtpcode/100 != 2 && smtpcode != 1)) {
    failf(data, "Command failed: %d", smtpcode);
    result = CURLE_RECV_ERROR;
  }
  else {

    if(!data->set.opt_no_body) {
      line[len] = '\n';
      result = Curl_client_write(conn, CLIENTWRITE_BODY, line, len + 1);
      line[len] = '\0';
    }

    if(smtpcode != 1) {
      if(smtp->rcpt) {
        smtp->rcpt = smtp->rcpt->next;

        if(smtp->rcpt) {

          result = smtp_perform_command(conn);
        }
        else

          state(conn, SMTP_STOP);
      }
      else

        state(conn, SMTP_STOP);
    }
  }

  return result;
}
