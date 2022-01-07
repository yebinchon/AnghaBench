
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* ecdsa; void* rsa; } ;
typedef TYPE_1__ mbedtls_ssl_sig_hash_set_t ;
typedef void* mbedtls_md_type_t ;



void mbedtls_ssl_sig_hash_set_const_hash( mbedtls_ssl_sig_hash_set_t *set,
                                          mbedtls_md_type_t md_alg )
{
    set->rsa = md_alg;
    set->ecdsa = md_alg;
}
