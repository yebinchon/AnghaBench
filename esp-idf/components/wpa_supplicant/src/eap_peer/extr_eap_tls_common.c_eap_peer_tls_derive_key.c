
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tls_keys {size_t client_random_len; size_t server_random_len; int master_key_len; int * master_key; int * server_random; int * client_random; } ;
struct eap_ssl_data {int conn; int ssl_ctx; } ;
struct eap_sm {int dummy; } ;


 int os_free (int *) ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,int *,size_t) ;
 scalar_t__ tls_connection_get_keys (int ,int ,struct tls_keys*) ;
 scalar_t__ tls_connection_prf (int ,int ,char const*,int ,int *,size_t) ;
 scalar_t__ tls_prf_sha1_md5 (int *,int ,char const*,int *,size_t,int *,size_t) ;

u8 * eap_peer_tls_derive_key(struct eap_sm *sm, struct eap_ssl_data *data,
        const char *label, size_t len)
{
 struct tls_keys keys;
 u8 *rnd = ((void*)0), *out;

 out = os_malloc(len);
 if (out == ((void*)0))
  return ((void*)0);


 if (tls_connection_prf(data->ssl_ctx, data->conn, label, 0, out, len)
     == 0)
  return out;






 if (tls_connection_get_keys(data->ssl_ctx, data->conn, &keys))
  goto fail;

 if (keys.client_random == ((void*)0) || keys.server_random == ((void*)0) ||
     keys.master_key == ((void*)0))
  goto fail;

 rnd = os_malloc(keys.client_random_len + keys.server_random_len);
 if (rnd == ((void*)0))
  goto fail;
 os_memcpy(rnd, keys.client_random, keys.client_random_len);
 os_memcpy(rnd + keys.client_random_len, keys.server_random,
    keys.server_random_len);

 if (tls_prf_sha1_md5(keys.master_key, keys.master_key_len,
        label, rnd, keys.client_random_len +
        keys.server_random_len, out, len)) {
  goto fail;
 }

 os_free(rnd);
 return out;

fail:
 os_free(out);
 os_free(rnd);
 return ((void*)0);
}
