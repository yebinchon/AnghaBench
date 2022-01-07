
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* authused; void* authmechs; } ;
struct smtp_conn {int domain; int pp; void* auth_supported; void* tls_supported; TYPE_2__ sasl; } ;
struct TYPE_3__ {struct smtp_conn smtpc; } ;
struct connectdata {TYPE_1__ proto; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int Curl_pp_sendf (int *,char*,int ) ;
 void* FALSE ;
 void* SASL_AUTH_NONE ;
 int SMTP_EHLO ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode smtp_perform_ehlo(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct smtp_conn *smtpc = &conn->proto.smtpc;

  smtpc->sasl.authmechs = SASL_AUTH_NONE;
  smtpc->sasl.authused = SASL_AUTH_NONE;

  smtpc->tls_supported = FALSE;
  smtpc->auth_supported = FALSE;


  result = Curl_pp_sendf(&smtpc->pp, "EHLO %s", smtpc->domain);

  if(!result)
    state(conn, SMTP_EHLO);

  return result;
}
