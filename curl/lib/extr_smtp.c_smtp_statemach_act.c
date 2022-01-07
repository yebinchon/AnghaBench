
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pingpong {scalar_t__ sendleft; } ;
struct smtp_conn {int state; struct pingpong pp; } ;
struct TYPE_3__ {struct smtp_conn smtpc; } ;
struct connectdata {TYPE_1__ proto; struct Curl_easy* data; int * sock; } ;
struct TYPE_4__ {int httpcode; } ;
struct Curl_easy {TYPE_2__ info; } ;
typedef int curl_socket_t ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ Curl_pp_flushsend (struct pingpong*) ;
 scalar_t__ Curl_pp_moredata (struct pingpong*) ;
 scalar_t__ Curl_pp_readresp (int ,struct pingpong*,int*,size_t*) ;
 size_t FIRSTSOCKET ;
 int SMTP_STOP ;
 int SMTP_UPGRADETLS ;
 scalar_t__ smtp_perform_upgrade_tls (struct connectdata*) ;
 scalar_t__ smtp_state_auth_resp (struct connectdata*,int,int) ;
 scalar_t__ smtp_state_command_resp (struct connectdata*,int,int) ;
 scalar_t__ smtp_state_data_resp (struct connectdata*,int,int) ;
 scalar_t__ smtp_state_ehlo_resp (struct connectdata*,int,int) ;
 scalar_t__ smtp_state_helo_resp (struct connectdata*,int,int) ;
 scalar_t__ smtp_state_mail_resp (struct connectdata*,int,int) ;
 scalar_t__ smtp_state_postdata_resp (struct connectdata*,int,int) ;
 scalar_t__ smtp_state_rcpt_resp (struct connectdata*,int,int) ;
 scalar_t__ smtp_state_servergreet_resp (struct connectdata*,int,int) ;
 scalar_t__ smtp_state_starttls_resp (struct connectdata*,int,int) ;
 int state (struct connectdata*,int) ;

__attribute__((used)) static CURLcode smtp_statemach_act(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  curl_socket_t sock = conn->sock[FIRSTSOCKET];
  struct Curl_easy *data = conn->data;
  int smtpcode;
  struct smtp_conn *smtpc = &conn->proto.smtpc;
  struct pingpong *pp = &smtpc->pp;
  size_t nread = 0;


  if(smtpc->state == SMTP_UPGRADETLS)
    return smtp_perform_upgrade_tls(conn);


  if(pp->sendleft)
    return Curl_pp_flushsend(pp);

  do {

    result = Curl_pp_readresp(sock, pp, &smtpcode, &nread);
    if(result)
      return result;


    if(smtpc->state != 131 && smtpcode != 1)
      data->info.httpcode = smtpcode;

    if(!smtpcode)
      break;


    switch(smtpc->state) {
    case 129:
      result = smtp_state_servergreet_resp(conn, smtpcode, smtpc->state);
      break;

    case 135:
      result = smtp_state_ehlo_resp(conn, smtpcode, smtpc->state);
      break;

    case 134:
      result = smtp_state_helo_resp(conn, smtpcode, smtpc->state);
      break;

    case 128:
      result = smtp_state_starttls_resp(conn, smtpcode, smtpc->state);
      break;

    case 138:
      result = smtp_state_auth_resp(conn, smtpcode, smtpc->state);
      break;

    case 137:
      result = smtp_state_command_resp(conn, smtpcode, smtpc->state);
      break;

    case 133:
      result = smtp_state_mail_resp(conn, smtpcode, smtpc->state);
      break;

    case 130:
      result = smtp_state_rcpt_resp(conn, smtpcode, smtpc->state);
      break;

    case 136:
      result = smtp_state_data_resp(conn, smtpcode, smtpc->state);
      break;

    case 132:
      result = smtp_state_postdata_resp(conn, smtpcode, smtpc->state);
      break;

    case 131:

    default:

      state(conn, SMTP_STOP);
      break;
    }
  } while(!result && smtpc->state != SMTP_STOP && Curl_pp_moredata(pp));

  return result;
}
