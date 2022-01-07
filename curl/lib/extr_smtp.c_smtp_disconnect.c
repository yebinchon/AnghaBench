
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
struct smtp_conn {int domain; TYPE_1__ sasl; TYPE_5__ pp; } ;
struct TYPE_7__ {struct smtp_conn smtpc; } ;
struct connectdata {TYPE_2__ proto; } ;
struct TYPE_8__ {scalar_t__ protoconnstart; } ;
struct TYPE_9__ {TYPE_3__ bits; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int Curl_pp_disconnect (TYPE_5__*) ;
 int Curl_safefree (int ) ;
 int Curl_sasl_cleanup (struct connectdata*,int ) ;
 int TRUE ;
 int smtp_block_statemach (struct connectdata*,int ) ;
 int smtp_perform_quit (struct connectdata*) ;

__attribute__((used)) static CURLcode smtp_disconnect(struct connectdata *conn, bool dead_connection)
{
  struct smtp_conn *smtpc = &conn->proto.smtpc;







  if(!dead_connection && smtpc->pp.conn && smtpc->pp.conn->bits.protoconnstart)
    if(!smtp_perform_quit(conn))
      (void)smtp_block_statemach(conn, TRUE);


  Curl_pp_disconnect(&smtpc->pp);


  Curl_sasl_cleanup(conn, smtpc->sasl.authused);


  Curl_safefree(smtpc->domain);

  return CURLE_OK;
}
