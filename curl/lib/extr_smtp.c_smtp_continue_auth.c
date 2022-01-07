
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smtp_conn {int pp; } ;
struct TYPE_2__ {struct smtp_conn smtpc; } ;
struct connectdata {TYPE_1__ proto; } ;
typedef int CURLcode ;


 int Curl_pp_sendf (int *,char*,char const*) ;

__attribute__((used)) static CURLcode smtp_continue_auth(struct connectdata *conn, const char *resp)
{
  struct smtp_conn *smtpc = &conn->proto.smtpc;

  return Curl_pp_sendf(&smtpc->pp, "%s", resp);
}
