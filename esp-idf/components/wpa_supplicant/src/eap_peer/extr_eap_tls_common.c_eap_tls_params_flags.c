
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection_params {int flags; } ;


 int TLS_CONN_ALLOW_SIGN_RSA_MD5 ;
 int TLS_CONN_DISABLE_SESSION_TICKET ;
 int TLS_CONN_DISABLE_TIME_CHECKS ;
 scalar_t__ os_strstr (char const*,char*) ;

__attribute__((used)) static void eap_tls_params_flags(struct tls_connection_params *params,
     const char *txt)
{
 if (txt == ((void*)0))
  return;
 if (os_strstr(txt, "tls_allow_md5=1"))
  params->flags |= TLS_CONN_ALLOW_SIGN_RSA_MD5;
 if (os_strstr(txt, "tls_disable_time_checks=1"))
  params->flags |= TLS_CONN_DISABLE_TIME_CHECKS;
 if (os_strstr(txt, "tls_disable_session_ticket=1"))
  params->flags |= TLS_CONN_DISABLE_SESSION_TICKET;
 if (os_strstr(txt, "tls_disable_session_ticket=0"))
  params->flags &= ~TLS_CONN_DISABLE_SESSION_TICKET;
}
