
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_ssl_data {int conn; int ssl_ctx; } ;
struct eap_sm {int dummy; } ;


 int eap_peer_tls_reset_input (struct eap_ssl_data*) ;
 int eap_peer_tls_reset_output (struct eap_ssl_data*) ;
 int tls_connection_deinit (int ,int ) ;

void eap_peer_tls_ssl_deinit(struct eap_sm *sm, struct eap_ssl_data *data)
{
 tls_connection_deinit(data->ssl_ctx, data->conn);
 eap_peer_tls_reset_input(data);
 eap_peer_tls_reset_output(data);
}
