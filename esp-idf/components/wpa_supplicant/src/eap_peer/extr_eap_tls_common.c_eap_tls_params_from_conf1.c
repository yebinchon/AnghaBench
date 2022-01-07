
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection_params {char* ca_cert; char* ca_path; char* client_cert; char* private_key; char* private_key_passwd; int flags; } ;
struct eap_peer_config {int phase1; scalar_t__ private_key_passwd; scalar_t__ private_key; scalar_t__ client_cert; scalar_t__ ca_path; scalar_t__ ca_cert; } ;


 int TLS_CONN_DISABLE_TIME_CHECKS ;
 int eap_tls_params_flags (struct tls_connection_params*,int ) ;
 scalar_t__ wifi_sta_get_enterprise_disable_time_check () ;

__attribute__((used)) static void eap_tls_params_from_conf1(struct tls_connection_params *params,
          struct eap_peer_config *config)
{
 params->ca_cert = (char *) config->ca_cert;
 params->ca_path = (char *) config->ca_path;
 params->client_cert = (char *) config->client_cert;
 params->private_key = (char *) config->private_key;
 params->private_key_passwd = (char *) config->private_key_passwd;
 eap_tls_params_flags(params, config->phase1);
 if (wifi_sta_get_enterprise_disable_time_check())
  params->flags |= TLS_CONN_DISABLE_TIME_CHECKS;
 else
  params->flags &= (~TLS_CONN_DISABLE_TIME_CHECKS);
}
