
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_pk_type_t ;


 int MBEDTLS_PK_ECDSA ;
 int MBEDTLS_PK_NONE ;
 int MBEDTLS_PK_RSA ;



mbedtls_pk_type_t mbedtls_ssl_pk_alg_from_sig( unsigned char sig )
{
    switch( sig )
    {
        default:
            return( MBEDTLS_PK_NONE );
    }
}
