
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pop3_conn {scalar_t__ state; scalar_t__ ssldone; } ;
struct TYPE_2__ {struct pop3_conn pop3c; } ;
struct connectdata {TYPE_1__ proto; } ;
typedef int CURLcode ;


 int Curl_ssl_connect_nonblocking (struct connectdata*,int ,scalar_t__*) ;
 int FIRSTSOCKET ;
 scalar_t__ POP3_UPGRADETLS ;
 int pop3_perform_capa (struct connectdata*) ;
 int pop3_to_pop3s (struct connectdata*) ;
 int state (struct connectdata*,scalar_t__) ;

__attribute__((used)) static CURLcode pop3_perform_upgrade_tls(struct connectdata *conn)
{

  struct pop3_conn *pop3c = &conn->proto.pop3c;
  CURLcode result = Curl_ssl_connect_nonblocking(conn, FIRSTSOCKET,
                                                 &pop3c->ssldone);

  if(!result) {
    if(pop3c->state != POP3_UPGRADETLS)
      state(conn, POP3_UPGRADETLS);

    if(pop3c->ssldone) {
      pop3_to_pop3s(conn);
      result = pop3_perform_capa(conn);
    }
  }

  return result;
}
