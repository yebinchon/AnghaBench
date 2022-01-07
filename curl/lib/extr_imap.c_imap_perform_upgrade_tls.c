
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imap_conn {scalar_t__ state; scalar_t__ ssldone; } ;
struct TYPE_2__ {struct imap_conn imapc; } ;
struct connectdata {TYPE_1__ proto; } ;
typedef int CURLcode ;


 int Curl_ssl_connect_nonblocking (struct connectdata*,int ,scalar_t__*) ;
 int FIRSTSOCKET ;
 scalar_t__ IMAP_UPGRADETLS ;
 int imap_perform_capability (struct connectdata*) ;
 int imap_to_imaps (struct connectdata*) ;
 int state (struct connectdata*,scalar_t__) ;

__attribute__((used)) static CURLcode imap_perform_upgrade_tls(struct connectdata *conn)
{

  struct imap_conn *imapc = &conn->proto.imapc;
  CURLcode result = Curl_ssl_connect_nonblocking(conn, FIRSTSOCKET,
                                                 &imapc->ssldone);

  if(!result) {
    if(imapc->state != IMAP_UPGRADETLS)
      state(conn, IMAP_UPGRADETLS);

    if(imapc->ssldone) {
      imap_to_imaps(conn);
      result = imap_perform_capability(conn);
    }
  }

  return result;
}
