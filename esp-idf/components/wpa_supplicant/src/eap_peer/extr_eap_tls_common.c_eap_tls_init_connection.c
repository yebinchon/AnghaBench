
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection_params {int flags; } ;
struct eap_ssl_data {int * conn; int ssl_ctx; } ;
struct eap_sm {int dummy; } ;
struct eap_peer_config {int ocsp; int * pin; } ;


 int MSG_INFO ;
 int TLS_CONN_REQUEST_OCSP ;
 int TLS_CONN_REQUIRE_OCSP ;
 int TLS_SET_PARAMS_ENGINE_PRV_INIT_FAILED ;
 int TLS_SET_PARAMS_ENGINE_PRV_VERIFY_FAILED ;
 int os_free (int *) ;
 int tls_connection_deinit (int ,int *) ;
 int * tls_connection_init (int ) ;
 int tls_connection_set_params (int ,int *,struct tls_connection_params*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int eap_tls_init_connection(struct eap_sm *sm,
       struct eap_ssl_data *data,
       struct eap_peer_config *config,
       struct tls_connection_params *params)
{
 int res;

 if (config->ocsp)
  params->flags |= TLS_CONN_REQUEST_OCSP;
 if (config->ocsp == 2)
  params->flags |= TLS_CONN_REQUIRE_OCSP;
 data->conn = tls_connection_init(data->ssl_ctx);
 if (data->conn == ((void*)0)) {
  wpa_printf(MSG_INFO, "SSL: Failed to initialize new TLS "
      "connection");
  return -1;
 }

 res = tls_connection_set_params(data->ssl_ctx, data->conn, params);

 if (res == TLS_SET_PARAMS_ENGINE_PRV_INIT_FAILED) {





  os_free(config->pin);
  config->pin = ((void*)0);
 } else if (res == TLS_SET_PARAMS_ENGINE_PRV_VERIFY_FAILED) {
  wpa_printf(MSG_INFO, "TLS: Failed to load private key");




  os_free(config->pin);
  config->pin = ((void*)0);
  tls_connection_deinit(data->ssl_ctx, data->conn);
  data->conn = ((void*)0);
  return -1;
 } else if (res) {
  wpa_printf(MSG_INFO, "TLS: Failed to set TLS connection "
      "parameters");
  tls_connection_deinit(data->ssl_ctx, data->conn);
  data->conn = ((void*)0);
  return -1;
 }

 return 0;
}
