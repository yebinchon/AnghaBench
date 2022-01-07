
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection_params {int private_key_blob_len; int private_key_blob; int private_key; int client_cert_blob_len; int client_cert_blob; int client_cert; int ca_cert_blob_len; int ca_cert_blob; int ca_cert; int flags; } ;
struct eap_ssl_data {scalar_t__ eap_type; } ;
struct eap_sm {scalar_t__ workaround; } ;
struct eap_peer_config {int dummy; } ;


 scalar_t__ EAP_TYPE_FAST ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int TLS_CONN_DISABLE_SESSION_TICKET ;
 scalar_t__ eap_tls_check_blob (struct eap_sm*,int *,int *,int *) ;
 int eap_tls_params_from_conf1 (struct tls_connection_params*,struct eap_peer_config*) ;
 int os_memset (struct tls_connection_params*,int ,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int eap_tls_params_from_conf(struct eap_sm *sm,
        struct eap_ssl_data *data,
        struct tls_connection_params *params,
        struct eap_peer_config *config)
{
 os_memset(params, 0, sizeof(*params));
 if (sm->workaround && data->eap_type != EAP_TYPE_FAST) {
  params->flags |= TLS_CONN_DISABLE_SESSION_TICKET;
 }

 wpa_printf(MSG_DEBUG, "TLS: using phase1 config options");
 eap_tls_params_from_conf1(params, config);





 if (eap_tls_check_blob(sm, &params->ca_cert, &params->ca_cert_blob,
          &params->ca_cert_blob_len) ||
     eap_tls_check_blob(sm, &params->client_cert,
          &params->client_cert_blob,
          &params->client_cert_blob_len) ||
     eap_tls_check_blob(sm, &params->private_key,
          &params->private_key_blob,
          &params->private_key_blob_len)) {
  wpa_printf(MSG_INFO, "SSL: Failed to get configuration blobs");
  return -1;
 }

 return 0;
}
