
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* authused; void* authmechs; } ;
struct imap_conn {int tls_supported; TYPE_2__ sasl; } ;
struct TYPE_3__ {struct imap_conn imapc; } ;
struct connectdata {TYPE_1__ proto; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int FALSE ;
 int IMAP_CAPABILITY ;
 void* SASL_AUTH_NONE ;
 int imap_sendf (struct connectdata*,char*) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode imap_perform_capability(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct imap_conn *imapc = &conn->proto.imapc;
  imapc->sasl.authmechs = SASL_AUTH_NONE;
  imapc->sasl.authused = SASL_AUTH_NONE;
  imapc->tls_supported = FALSE;


  result = imap_sendf(conn, "CAPABILITY");

  if(!result)
    state(conn, IMAP_CAPABILITY);

  return result;
}
