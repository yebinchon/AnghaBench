
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pingpong {struct connectdata* conn; int endofresp; int statemach_act; int response_time; } ;
struct imap_conn {int resptag; int sasl; int preftype; struct pingpong pp; } ;
struct TYPE_2__ {struct imap_conn imapc; } ;
struct connectdata {TYPE_1__ proto; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 int Curl_pp_init (struct pingpong*) ;
 int Curl_sasl_init (int *,int *) ;
 int FALSE ;
 int IMAP_SERVERGREET ;
 int IMAP_TYPE_ANY ;
 int RESP_TIMEOUT ;
 int connkeep (struct connectdata*,char*) ;
 int imap_endofresp ;
 scalar_t__ imap_multi_statemach (struct connectdata*,int*) ;
 scalar_t__ imap_parse_url_options (struct connectdata*) ;
 int imap_statemach_act ;
 int saslimap ;
 int state (struct connectdata*,int ) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static CURLcode imap_connect(struct connectdata *conn, bool *done)
{
  CURLcode result = CURLE_OK;
  struct imap_conn *imapc = &conn->proto.imapc;
  struct pingpong *pp = &imapc->pp;

  *done = FALSE;


  connkeep(conn, "IMAP default");


  pp->response_time = RESP_TIMEOUT;
  pp->statemach_act = imap_statemach_act;
  pp->endofresp = imap_endofresp;
  pp->conn = conn;


  imapc->preftype = IMAP_TYPE_ANY;
  Curl_sasl_init(&imapc->sasl, &saslimap);


  Curl_pp_init(pp);


  result = imap_parse_url_options(conn);
  if(result)
    return result;


  state(conn, IMAP_SERVERGREET);


  strcpy(imapc->resptag, "*");

  result = imap_multi_statemach(conn, done);

  return result;
}
