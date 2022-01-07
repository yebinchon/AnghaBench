
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ecdsa; int rsa; } ;
typedef TYPE_1__ mbedtls_ssl_sig_hash_set_t ;
typedef int mbedtls_pk_type_t ;
typedef int mbedtls_md_type_t ;


 int MBEDTLS_MD_NONE ;



mbedtls_md_type_t mbedtls_ssl_sig_hash_set_find( mbedtls_ssl_sig_hash_set_t *set,
                                                 mbedtls_pk_type_t sig_alg )
{
    switch( sig_alg )
    {
        case 128:
            return( set->rsa );
        case 129:
            return( set->ecdsa );
        default:
            return( MBEDTLS_MD_NONE );
    }
}
