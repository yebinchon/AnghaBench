
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_ssl_sig_hash_set_t ;


 int MBEDTLS_MD_NONE ;
 int mbedtls_ssl_sig_hash_set_const_hash (int *,int ) ;

__attribute__((used)) static inline void mbedtls_ssl_sig_hash_set_init( mbedtls_ssl_sig_hash_set_t *set )
{
    mbedtls_ssl_sig_hash_set_const_hash( set, MBEDTLS_MD_NONE );
}
