
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_verify_hash {int * sha256_cert; int * sha256_server; int * sha256_client; int * sha1_cert; int * sha1_server; int * sha1_client; int * md5_cert; int * md5_server; int * md5_client; } ;


 int CRYPTO_HASH_ALG_MD5 ;
 int CRYPTO_HASH_ALG_SHA1 ;
 int CRYPTO_HASH_ALG_SHA256 ;
 void* crypto_hash_init (int ,int *,int ) ;
 int tls_verify_hash_free (struct tls_verify_hash*) ;

int tls_verify_hash_init(struct tls_verify_hash *verify)
{
 tls_verify_hash_free(verify);
 verify->md5_client = crypto_hash_init(CRYPTO_HASH_ALG_MD5, ((void*)0), 0);
 verify->md5_server = crypto_hash_init(CRYPTO_HASH_ALG_MD5, ((void*)0), 0);
 verify->md5_cert = crypto_hash_init(CRYPTO_HASH_ALG_MD5, ((void*)0), 0);
 verify->sha1_client = crypto_hash_init(CRYPTO_HASH_ALG_SHA1, ((void*)0), 0);
 verify->sha1_server = crypto_hash_init(CRYPTO_HASH_ALG_SHA1, ((void*)0), 0);
 verify->sha1_cert = crypto_hash_init(CRYPTO_HASH_ALG_SHA1, ((void*)0), 0);
 if (verify->md5_client == ((void*)0) || verify->md5_server == ((void*)0) ||
     verify->md5_cert == ((void*)0) || verify->sha1_client == ((void*)0) ||
     verify->sha1_server == ((void*)0) || verify->sha1_cert == ((void*)0)) {
  tls_verify_hash_free(verify);
  return -1;
 }
 return 0;
}
