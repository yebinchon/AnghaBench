
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int authused; } ;
struct TYPE_10__ {TYPE_4__* conn; } ;
struct imap_conn {int mailbox_uidvalidity; int mailbox; TYPE_1__ sasl; TYPE_5__ pp; } ;
struct TYPE_7__ {struct imap_conn imapc; } ;
struct connectdata {TYPE_2__ proto; } ;
struct TYPE_8__ {scalar_t__ protoconnstart; } ;
struct TYPE_9__ {TYPE_3__ bits; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int Curl_pp_disconnect (TYPE_5__*) ;
 int Curl_safefree (int ) ;
 int Curl_sasl_cleanup (struct connectdata*,int ) ;
 int TRUE ;
 int imap_block_statemach (struct connectdata*,int ) ;
 int imap_perform_logout (struct connectdata*) ;

__attribute__((used)) static CURLcode imap_disconnect(struct connectdata *conn, bool dead_connection)
{
  struct imap_conn *imapc = &conn->proto.imapc;







  if(!dead_connection && imapc->pp.conn && imapc->pp.conn->bits.protoconnstart)
    if(!imap_perform_logout(conn))
      (void)imap_block_statemach(conn, TRUE);


  Curl_pp_disconnect(&imapc->pp);


  Curl_sasl_cleanup(conn, imapc->sasl.authused);


  Curl_safefree(imapc->mailbox);
  Curl_safefree(imapc->mailbox_uidvalidity);

  return CURLE_OK;
}
