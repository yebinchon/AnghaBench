
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pop3_conn {int pp; } ;
struct TYPE_2__ {struct pop3_conn pop3c; } ;
struct connectdata {TYPE_1__ proto; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int Curl_pp_sendf (int *,char*,char const*,...) ;

__attribute__((used)) static CURLcode pop3_perform_auth(struct connectdata *conn,
                                  const char *mech,
                                  const char *initresp)
{
  CURLcode result = CURLE_OK;
  struct pop3_conn *pop3c = &conn->proto.pop3c;

  if(initresp) {

    result = Curl_pp_sendf(&pop3c->pp, "AUTH %s %s", mech, initresp);
  }
  else {

    result = Curl_pp_sendf(&pop3c->pp, "AUTH %s", mech);
  }

  return result;
}
