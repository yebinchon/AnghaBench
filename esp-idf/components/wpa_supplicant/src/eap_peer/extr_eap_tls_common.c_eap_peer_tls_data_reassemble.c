
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct eap_ssl_data {scalar_t__ tls_in_left; struct wpabuf const* tls_in; } ;


 int eap_peer_tls_reassemble_fragment (struct eap_ssl_data*,struct wpabuf const*) ;
 struct wpabuf const* wpabuf_dup (struct wpabuf const*) ;
 scalar_t__ wpabuf_len (struct wpabuf const*) ;

__attribute__((used)) static const struct wpabuf * eap_peer_tls_data_reassemble(
 struct eap_ssl_data *data, const struct wpabuf *in_data,
 int *need_more_input)
{
 *need_more_input = 0;

 if (data->tls_in_left > wpabuf_len(in_data) || data->tls_in) {

  int res = eap_peer_tls_reassemble_fragment(data, in_data);
  if (res) {
   if (res == 1)
    *need_more_input = 1;
   return ((void*)0);
  }


 } else {

  data->tls_in_left = 0;
  data->tls_in = wpabuf_dup(in_data);
  if (data->tls_in == ((void*)0))
   return ((void*)0);
 }

 return data->tls_in;
}
