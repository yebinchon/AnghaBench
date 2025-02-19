
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tlsv1_record_layer {int cipher_alg; int iv_size; int key_material_len; int hash_size; int hash_alg; int cipher_suite; } ;
struct tls_cipher_suite {scalar_t__ hash; int cipher; } ;
struct tls_cipher_data {int alg; int block_size; int key_material; } ;


 int CRYPTO_HASH_ALG_HMAC_MD5 ;
 int CRYPTO_HASH_ALG_HMAC_SHA1 ;
 int CRYPTO_HASH_ALG_HMAC_SHA256 ;
 int MD5_MAC_LEN ;
 int MSG_DEBUG ;
 int SHA1_MAC_LEN ;
 int SHA256_MAC_LEN ;
 scalar_t__ TLS_HASH_MD5 ;
 scalar_t__ TLS_HASH_SHA ;
 scalar_t__ TLS_HASH_SHA256 ;
 struct tls_cipher_data* tls_get_cipher_data (int ) ;
 struct tls_cipher_suite* tls_get_cipher_suite (int ) ;
 int wpa_printf (int ,char*,int ) ;

int tlsv1_record_set_cipher_suite(struct tlsv1_record_layer *rl,
      u16 cipher_suite)
{
 const struct tls_cipher_suite *suite;
 const struct tls_cipher_data *data;

 wpa_printf(MSG_DEBUG, "TLSv1: Selected cipher suite: 0x%04x",
     cipher_suite);
 rl->cipher_suite = cipher_suite;

 suite = tls_get_cipher_suite(cipher_suite);
 if (suite == ((void*)0))
  return -1;

 if (suite->hash == TLS_HASH_MD5) {
  rl->hash_alg = CRYPTO_HASH_ALG_HMAC_MD5;
  rl->hash_size = MD5_MAC_LEN;
 } else if (suite->hash == TLS_HASH_SHA) {
  rl->hash_alg = CRYPTO_HASH_ALG_HMAC_SHA1;
  rl->hash_size = SHA1_MAC_LEN;
 } else if (suite->hash == TLS_HASH_SHA256) {
  rl->hash_alg = CRYPTO_HASH_ALG_HMAC_SHA256;
  rl->hash_size = SHA256_MAC_LEN;
 }

 data = tls_get_cipher_data(suite->cipher);
 if (data == ((void*)0))
  return -1;

 rl->key_material_len = data->key_material;
 rl->iv_size = data->block_size;
 rl->cipher_alg = data->alg;

 return 0;
}
