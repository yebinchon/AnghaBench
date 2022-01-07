
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_ssl_data {int * tls_out; int conn; int ssl_ctx; } ;
struct eap_sm {int dummy; } ;
typedef int EapType ;


 int MSG_DEBUG ;
 int eap_peer_tls_reset_output (struct eap_ssl_data*) ;
 int eap_tls_process_input (struct eap_sm*,struct eap_ssl_data*,int const*,size_t,struct wpabuf**) ;
 int eap_tls_process_output (struct eap_ssl_data*,int ,int,int ,int,struct wpabuf**) ;
 scalar_t__ tls_connection_get_failed (int ,int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (int *) ;
 scalar_t__ wpabuf_len (int *) ;

int eap_peer_tls_process_helper(struct eap_sm *sm, struct eap_ssl_data *data,
    EapType eap_type, int peap_version,
    u8 id, const u8 *in_data, size_t in_len,
    struct wpabuf **out_data)
{
 int ret = 0;

 *out_data = ((void*)0);

 if (data->tls_out && wpabuf_len(data->tls_out) > 0 && in_len > 0) {
  wpa_printf(MSG_DEBUG, "SSL: Received non-ACK when output "
      "fragments are waiting to be sent out");
  return -1;
 }

 if (data->tls_out == ((void*)0) || wpabuf_len(data->tls_out) == 0) {




  int res = eap_tls_process_input(sm, data, in_data, in_len,
      out_data);
  if (res) {




   return res;
  }





 }

 if (data->tls_out == ((void*)0)) {





  eap_peer_tls_reset_output(data);
  return -1;
 }

 if (tls_connection_get_failed(data->ssl_ctx, data->conn)) {

  wpa_printf(MSG_DEBUG, "SSL: Failed - tls_out available to "
      "report error");
  ret = -1;

 }

 if (data->tls_out == ((void*)0) || wpabuf_len(data->tls_out) == 0) {





  wpa_printf(MSG_DEBUG, "SSL: No data to be sent out");
  wpabuf_free(data->tls_out);
  data->tls_out = ((void*)0);
  return 1;
 }


 return eap_tls_process_output(data, eap_type, peap_version, id, ret,
          out_data);
}
