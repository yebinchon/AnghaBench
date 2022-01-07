
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pp; } ;
struct TYPE_4__ {TYPE_1__ smtpc; } ;
struct connectdata {TYPE_2__ proto; } ;
typedef int CURLcode ;


 int Curl_pp_sendf (int *,char*,char*) ;
 int SMTP_QUIT ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode smtp_perform_quit(struct connectdata *conn)
{

  CURLcode result = Curl_pp_sendf(&conn->proto.smtpc.pp, "%s", "QUIT");

  if(!result)
    state(conn, SMTP_QUIT);

  return result;
}
