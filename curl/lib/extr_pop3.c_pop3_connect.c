
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pingpong {struct connectdata* conn; int endofresp; int statemach_act; int response_time; } ;
struct pop3_conn {int sasl; int preftype; struct pingpong pp; } ;
struct TYPE_2__ {struct pop3_conn pop3c; } ;
struct connectdata {TYPE_1__ proto; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 int Curl_pp_init (struct pingpong*) ;
 int Curl_sasl_init (int *,int *) ;
 int FALSE ;
 int POP3_SERVERGREET ;
 int POP3_TYPE_ANY ;
 int RESP_TIMEOUT ;
 int connkeep (struct connectdata*,char*) ;
 int pop3_endofresp ;
 scalar_t__ pop3_multi_statemach (struct connectdata*,int*) ;
 scalar_t__ pop3_parse_url_options (struct connectdata*) ;
 int pop3_statemach_act ;
 int saslpop3 ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode pop3_connect(struct connectdata *conn, bool *done)
{
  CURLcode result = CURLE_OK;
  struct pop3_conn *pop3c = &conn->proto.pop3c;
  struct pingpong *pp = &pop3c->pp;

  *done = FALSE;


  connkeep(conn, "POP3 default");


  pp->response_time = RESP_TIMEOUT;
  pp->statemach_act = pop3_statemach_act;
  pp->endofresp = pop3_endofresp;
  pp->conn = conn;


  pop3c->preftype = POP3_TYPE_ANY;
  Curl_sasl_init(&pop3c->sasl, &saslpop3);


  Curl_pp_init(pp);


  result = pop3_parse_url_options(conn);
  if(result)
    return result;


  state(conn, POP3_SERVERGREET);

  result = pop3_multi_statemach(conn, done);

  return result;
}
