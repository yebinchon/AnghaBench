
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smtp_conn {scalar_t__ state; scalar_t__ ssldone; } ;
struct TYPE_2__ {struct smtp_conn smtpc; } ;
struct connectdata {TYPE_1__ proto; } ;
typedef int CURLcode ;


 int Curl_ssl_connect_nonblocking (struct connectdata*,int ,scalar_t__*) ;
 int FIRSTSOCKET ;
 scalar_t__ SMTP_UPGRADETLS ;
 int smtp_perform_ehlo (struct connectdata*) ;
 int smtp_to_smtps (struct connectdata*) ;
 int state (struct connectdata*,scalar_t__) ;

__attribute__((used)) static CURLcode smtp_perform_upgrade_tls(struct connectdata *conn)
{

  struct smtp_conn *smtpc = &conn->proto.smtpc;
  CURLcode result = Curl_ssl_connect_nonblocking(conn, FIRSTSOCKET,
                                                 &smtpc->ssldone);

  if(!result) {
    if(smtpc->state != SMTP_UPGRADETLS)
      state(conn, SMTP_UPGRADETLS);

    if(smtpc->ssldone) {
      smtp_to_smtps(conn);
      result = smtp_perform_ehlo(conn);
    }
  }

  return result;
}
