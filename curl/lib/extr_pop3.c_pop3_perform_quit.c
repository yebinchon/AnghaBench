
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pp; } ;
struct TYPE_4__ {TYPE_1__ pop3c; } ;
struct connectdata {TYPE_2__ proto; } ;
typedef int CURLcode ;


 int Curl_pp_sendf (int *,char*,char*) ;
 int POP3_QUIT ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode pop3_perform_quit(struct connectdata *conn)
{

  CURLcode result = Curl_pp_sendf(&conn->proto.pop3c.pp, "%s", "QUIT");

  if(!result)
    state(conn, POP3_QUIT);

  return result;
}
