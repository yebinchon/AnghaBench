
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smtp_conn {int pp; } ;
struct TYPE_2__ {struct smtp_conn smtpc; } ;
struct connectdata {TYPE_1__ proto; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int Curl_pp_sendf (int *,char*,char const*,...) ;

__attribute__((used)) static CURLcode smtp_perform_auth(struct connectdata *conn,
                                  const char *mech,
                                  const char *initresp)
{
  CURLcode result = CURLE_OK;
  struct smtp_conn *smtpc = &conn->proto.smtpc;

  if(initresp) {

    result = Curl_pp_sendf(&smtpc->pp, "AUTH %s %s", mech, initresp);
  }
  else {

    result = Curl_pp_sendf(&smtpc->pp, "AUTH %s", mech);
  }

  return result;
}
