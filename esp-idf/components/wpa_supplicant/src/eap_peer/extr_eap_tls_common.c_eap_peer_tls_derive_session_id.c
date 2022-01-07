
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tls_keys {int client_random_len; int server_random_len; int * server_random; int * client_random; int * master_key; } ;
struct eap_ssl_data {int conn; } ;
struct eap_sm {int ssl_ctx; } ;


 int * os_malloc (size_t) ;
 int os_memcpy (int *,int *,int) ;
 scalar_t__ tls_connection_get_keys (int ,int ,struct tls_keys*) ;

u8 * eap_peer_tls_derive_session_id(struct eap_sm *sm,
        struct eap_ssl_data *data, u8 eap_type,
        size_t *len)
{
 struct tls_keys keys;
 u8 *out;





 if (tls_connection_get_keys(sm->ssl_ctx, data->conn, &keys))
  return ((void*)0);

 if (keys.client_random == ((void*)0) || keys.server_random == ((void*)0) ||
     keys.master_key == ((void*)0))
  return ((void*)0);

 *len = 1 + keys.client_random_len + keys.server_random_len;
 out = os_malloc(*len);
 if (out == ((void*)0))
  return ((void*)0);


 out[0] = eap_type;
 os_memcpy(out + 1, keys.client_random, keys.client_random_len);
 os_memcpy(out + 1 + keys.client_random_len, keys.server_random,
           keys.server_random_len);

 return out;
}
