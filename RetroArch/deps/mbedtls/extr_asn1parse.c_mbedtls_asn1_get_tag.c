
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MBEDTLS_ERR_ASN1_OUT_OF_DATA ;
 int MBEDTLS_ERR_ASN1_UNEXPECTED_TAG ;
 int mbedtls_asn1_get_len (unsigned char**,unsigned char const*,size_t*) ;

int mbedtls_asn1_get_tag( unsigned char **p,
                  const unsigned char *end,
                  size_t *len, int tag )
{
    if( ( end - *p ) < 1 )
        return( MBEDTLS_ERR_ASN1_OUT_OF_DATA );

    if( **p != tag )
        return( MBEDTLS_ERR_ASN1_UNEXPECTED_TAG );

    (*p)++;

    return( mbedtls_asn1_get_len( p, end, len ) );
}
