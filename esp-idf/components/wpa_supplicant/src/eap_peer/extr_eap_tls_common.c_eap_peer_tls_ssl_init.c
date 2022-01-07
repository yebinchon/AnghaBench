
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tls_connection_params {int dummy; } ;
struct eap_ssl_data {int include_tls_length; int tls_out_limit; int ssl_ctx; int eap_type; struct eap_sm* eap; } ;
struct eap_sm {int ssl_ctx; } ;
struct eap_peer_config {scalar_t__ phase1; int fragment_size; } ;


 int MSG_INFO ;
 scalar_t__ eap_tls_init_connection (struct eap_sm*,struct eap_ssl_data*,struct eap_peer_config*,struct tls_connection_params*) ;
 scalar_t__ eap_tls_params_from_conf (struct eap_sm*,struct eap_ssl_data*,struct tls_connection_params*,struct eap_peer_config*) ;
 scalar_t__ os_strstr (scalar_t__,char*) ;
 int wpa_printf (int ,char*) ;

int eap_peer_tls_ssl_init(struct eap_sm *sm, struct eap_ssl_data *data,
     struct eap_peer_config *config, u8 eap_type)
{
 struct tls_connection_params params;

 if (config == ((void*)0))
  return -1;

 data->eap = sm;
 data->eap_type = eap_type;
 data->ssl_ctx = sm->ssl_ctx;
 if (eap_tls_params_from_conf(sm, data, &params, config) < 0)
  return -1;

 if (eap_tls_init_connection(sm, data, config, &params) < 0)
  return -1;

 data->tls_out_limit = config->fragment_size;

 if (config->phase1 &&
     os_strstr(config->phase1, "include_tls_length=1")) {
  wpa_printf(MSG_INFO, "TLS: Include TLS Message Length in "
      "unfragmented packets");
  data->include_tls_length = 1;
 }

 return 0;
}
