
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sni_authmode; scalar_t__ ecjpake_cache_len; int * ecjpake_cache; int ecjpake_ctx; int ecdh_ctx; int dhm_ctx; int hash_algs; int update_checksum; int fin_sha512; int fin_sha256; int fin_sha1; int fin_md5; } ;
typedef TYPE_1__ mbedtls_ssl_handshake_params ;


 int MBEDTLS_SSL_VERIFY_UNSET ;
 int mbedtls_dhm_init (int *) ;
 int mbedtls_ecdh_init (int *) ;
 int mbedtls_ecjpake_init (int *) ;
 int mbedtls_md5_init (int *) ;
 int mbedtls_md5_starts (int *) ;
 int mbedtls_sha1_init (int *) ;
 int mbedtls_sha1_starts (int *) ;
 int mbedtls_sha256_init (int *) ;
 int mbedtls_sha256_starts (int *,int ) ;
 int mbedtls_sha512_init (int *) ;
 int mbedtls_sha512_starts (int *,int) ;
 int mbedtls_ssl_sig_hash_set_init (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int ssl_update_checksum_start ;

__attribute__((used)) static void ssl_handshake_params_init( mbedtls_ssl_handshake_params *handshake )
{
    memset( handshake, 0, sizeof( mbedtls_ssl_handshake_params ) );
    handshake->update_checksum = ssl_update_checksum_start;
}
