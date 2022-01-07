
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pingpong {struct connectdata* conn; int endofresp; int statemach_act; int response_time; } ;
struct smtp_conn {int sasl; struct pingpong pp; } ;
struct TYPE_2__ {struct smtp_conn smtpc; } ;
struct connectdata {TYPE_1__ proto; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 int Curl_pp_init (struct pingpong*) ;
 int Curl_sasl_init (int *,int *) ;
 int FALSE ;
 int RESP_TIMEOUT ;
 int SMTP_SERVERGREET ;
 int connkeep (struct connectdata*,char*) ;
 int saslsmtp ;
 int smtp_endofresp ;
 scalar_t__ smtp_multi_statemach (struct connectdata*,int*) ;
 scalar_t__ smtp_parse_url_options (struct connectdata*) ;
 scalar_t__ smtp_parse_url_path (struct connectdata*) ;
 int smtp_statemach_act ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode smtp_connect(struct connectdata *conn, bool *done)
{
  CURLcode result = CURLE_OK;
  struct smtp_conn *smtpc = &conn->proto.smtpc;
  struct pingpong *pp = &smtpc->pp;

  *done = FALSE;


  connkeep(conn, "SMTP default");


  pp->response_time = RESP_TIMEOUT;
  pp->statemach_act = smtp_statemach_act;
  pp->endofresp = smtp_endofresp;
  pp->conn = conn;


  Curl_sasl_init(&smtpc->sasl, &saslsmtp);


  Curl_pp_init(pp);


  result = smtp_parse_url_options(conn);
  if(result)
    return result;


  result = smtp_parse_url_path(conn);
  if(result)
    return result;


  state(conn, SMTP_SERVERGREET);

  result = smtp_multi_statemach(conn, done);

  return result;
}
