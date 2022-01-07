
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_pk_context ;


 int MBEDTLS_ASN1_CHK_ADD (size_t,int ) ;
 int MBEDTLS_ERR_PK_FEATURE_UNAVAILABLE ;
 scalar_t__ MBEDTLS_PK_ECKEY ;
 scalar_t__ MBEDTLS_PK_RSA ;
 int mbedtls_pk_ec (int const) ;
 scalar_t__ mbedtls_pk_get_type (int const*) ;
 int mbedtls_pk_rsa (int const) ;
 int pk_write_ec_pubkey (unsigned char**,unsigned char*,int ) ;
 int pk_write_rsa_pubkey (unsigned char**,unsigned char*,int ) ;

int mbedtls_pk_write_pubkey( unsigned char **p, unsigned char *start,
                     const mbedtls_pk_context *key )
{
    int ret;
    size_t len = 0;
        return( MBEDTLS_ERR_PK_FEATURE_UNAVAILABLE );

    return( (int) len );
}
