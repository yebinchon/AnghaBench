
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
struct pop3_conn {int apoptimestamp; TYPE_1__ sasl; TYPE_5__ pp; } ;
struct TYPE_7__ {struct pop3_conn pop3c; } ;
struct connectdata {TYPE_2__ proto; } ;
struct TYPE_8__ {scalar_t__ protoconnstart; } ;
struct TYPE_9__ {TYPE_3__ bits; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int Curl_pp_disconnect (TYPE_5__*) ;
 int Curl_safefree (int ) ;
 int Curl_sasl_cleanup (struct connectdata*,int ) ;
 int TRUE ;
 int pop3_block_statemach (struct connectdata*,int ) ;
 int pop3_perform_quit (struct connectdata*) ;

__attribute__((used)) static CURLcode pop3_disconnect(struct connectdata *conn, bool dead_connection)
{
  struct pop3_conn *pop3c = &conn->proto.pop3c;







  if(!dead_connection && pop3c->pp.conn && pop3c->pp.conn->bits.protoconnstart)
    if(!pop3_perform_quit(conn))
      (void)pop3_block_statemach(conn, TRUE);


  Curl_pp_disconnect(&pop3c->pp);


  Curl_sasl_cleanup(conn, pop3c->sasl.authused);


  Curl_safefree(pop3c->apoptimestamp);

  return CURLE_OK;
}
