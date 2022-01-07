
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pop3_conn {int pp; } ;
struct TYPE_2__ {struct pop3_conn pop3c; } ;
struct connectdata {TYPE_1__ proto; } ;
typedef int CURLcode ;


 int Curl_pp_sendf (int *,char*,char const*) ;

__attribute__((used)) static CURLcode pop3_continue_auth(struct connectdata *conn,
                                   const char *resp)
{
  struct pop3_conn *pop3c = &conn->proto.pop3c;

  return Curl_pp_sendf(&pop3c->pp, "%s", resp);
}
