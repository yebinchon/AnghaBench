
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tls_verify_hash {scalar_t__ sha256_cert; scalar_t__ sha256_server; scalar_t__ sha256_client; scalar_t__ sha1_cert; scalar_t__ md5_cert; scalar_t__ sha1_server; scalar_t__ md5_server; scalar_t__ sha1_client; scalar_t__ md5_client; } ;


 int crypto_hash_update (scalar_t__,int const*,size_t) ;

void tls_verify_hash_add(struct tls_verify_hash *verify, const u8 *buf,
    size_t len)
{
 if (verify->md5_client && verify->sha1_client) {
  crypto_hash_update(verify->md5_client, buf, len);
  crypto_hash_update(verify->sha1_client, buf, len);
 }
 if (verify->md5_server && verify->sha1_server) {
  crypto_hash_update(verify->md5_server, buf, len);
  crypto_hash_update(verify->sha1_server, buf, len);
 }
 if (verify->md5_cert && verify->sha1_cert) {
  crypto_hash_update(verify->md5_cert, buf, len);
  crypto_hash_update(verify->sha1_cert, buf, len);
 }
}
