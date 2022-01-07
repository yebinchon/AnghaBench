
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_ssl_data {int * tls_out; scalar_t__ tls_out_pos; } ;


 int wpabuf_free (int *) ;

void eap_peer_tls_reset_output(struct eap_ssl_data *data)
{
 data->tls_out_pos = 0;
 wpabuf_free(data->tls_out);
 data->tls_out = ((void*)0);
}
