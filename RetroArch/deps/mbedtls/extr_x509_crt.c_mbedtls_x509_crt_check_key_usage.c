
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ext_types; unsigned int key_usage; } ;
typedef TYPE_1__ mbedtls_x509_crt ;


 int MBEDTLS_ERR_X509_BAD_INPUT_DATA ;
 int MBEDTLS_X509_EXT_KEY_USAGE ;
 unsigned int MBEDTLS_X509_KU_DECIPHER_ONLY ;
 unsigned int MBEDTLS_X509_KU_ENCIPHER_ONLY ;

int mbedtls_x509_crt_check_key_usage( const mbedtls_x509_crt *crt,
                                      unsigned int usage )
{
    unsigned int usage_must, usage_may;
    unsigned int may_mask = MBEDTLS_X509_KU_ENCIPHER_ONLY
                          | MBEDTLS_X509_KU_DECIPHER_ONLY;

    if( ( crt->ext_types & MBEDTLS_X509_EXT_KEY_USAGE ) == 0 )
        return( 0 );

    usage_must = usage & ~may_mask;

    if( ( ( crt->key_usage & ~may_mask ) & usage_must ) != usage_must )
        return( MBEDTLS_ERR_X509_BAD_INPUT_DATA );

    usage_may = usage & may_mask;

    if( ( ( crt->key_usage & may_mask ) | usage_may ) != usage_may )
        return( MBEDTLS_ERR_X509_BAD_INPUT_DATA );

    return( 0 );
}
