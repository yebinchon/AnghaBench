
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* authused; void* authmechs; } ;
struct pop3_conn {int pp; int tls_supported; TYPE_2__ sasl; } ;
struct TYPE_3__ {struct pop3_conn pop3c; } ;
struct connectdata {TYPE_1__ proto; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int Curl_pp_sendf (int *,char*,char*) ;
 int FALSE ;
 int POP3_CAPA ;
 void* SASL_AUTH_NONE ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode pop3_perform_capa(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct pop3_conn *pop3c = &conn->proto.pop3c;

  pop3c->sasl.authmechs = SASL_AUTH_NONE;
  pop3c->sasl.authused = SASL_AUTH_NONE;
  pop3c->tls_supported = FALSE;


  result = Curl_pp_sendf(&pop3c->pp, "%s", "CAPA");

  if(!result)
    state(conn, POP3_CAPA);

  return result;
}
