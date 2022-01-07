
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pingpong {scalar_t__ sendleft; } ;
struct pop3_conn {int state; struct pingpong pp; } ;
struct TYPE_2__ {struct pop3_conn pop3c; } ;
struct connectdata {TYPE_1__ proto; int * sock; } ;
typedef int curl_socket_t ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ Curl_pp_flushsend (struct pingpong*) ;
 scalar_t__ Curl_pp_moredata (struct pingpong*) ;
 scalar_t__ Curl_pp_readresp (int ,struct pingpong*,int*,size_t*) ;
 size_t FIRSTSOCKET ;
 int POP3_STOP ;
 int POP3_UPGRADETLS ;

 scalar_t__ pop3_perform_upgrade_tls (struct connectdata*) ;
 scalar_t__ pop3_state_apop_resp (struct connectdata*,int,int) ;
 scalar_t__ pop3_state_auth_resp (struct connectdata*,int,int) ;
 scalar_t__ pop3_state_capa_resp (struct connectdata*,int,int) ;
 scalar_t__ pop3_state_command_resp (struct connectdata*,int,int) ;
 scalar_t__ pop3_state_pass_resp (struct connectdata*,int,int) ;
 scalar_t__ pop3_state_servergreet_resp (struct connectdata*,int,int) ;
 scalar_t__ pop3_state_starttls_resp (struct connectdata*,int,int) ;
 scalar_t__ pop3_state_user_resp (struct connectdata*,int,int) ;
 int state (struct connectdata*,int) ;

__attribute__((used)) static CURLcode pop3_statemach_act(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  curl_socket_t sock = conn->sock[FIRSTSOCKET];
  int pop3code;
  struct pop3_conn *pop3c = &conn->proto.pop3c;
  struct pingpong *pp = &pop3c->pp;
  size_t nread = 0;


  if(pop3c->state == POP3_UPGRADETLS)
    return pop3_perform_upgrade_tls(conn);


  if(pp->sendleft)
    return Curl_pp_flushsend(pp);

 do {

    result = Curl_pp_readresp(sock, pp, &pop3code, &nread);
    if(result)
      return result;

    if(!pop3code)
      break;


    switch(pop3c->state) {
    case 130:
      result = pop3_state_servergreet_resp(conn, pop3code, pop3c->state);
      break;

    case 134:
      result = pop3_state_capa_resp(conn, pop3code, pop3c->state);
      break;

    case 129:
      result = pop3_state_starttls_resp(conn, pop3code, pop3c->state);
      break;

    case 135:
      result = pop3_state_auth_resp(conn, pop3code, pop3c->state);
      break;


    case 136:
      result = pop3_state_apop_resp(conn, pop3code, pop3c->state);
      break;


    case 128:
      result = pop3_state_user_resp(conn, pop3code, pop3c->state);
      break;

    case 132:
      result = pop3_state_pass_resp(conn, pop3code, pop3c->state);
      break;

    case 133:
      result = pop3_state_command_resp(conn, pop3code, pop3c->state);
      break;

    case 131:

    default:

      state(conn, POP3_STOP);
      break;
    }
  } while(!result && pop3c->state != POP3_STOP && Curl_pp_moredata(pp));

  return result;
}
