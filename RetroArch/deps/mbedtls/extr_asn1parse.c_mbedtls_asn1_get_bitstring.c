
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; unsigned char unused_bits; unsigned char* p; } ;
typedef TYPE_1__ mbedtls_asn1_bitstring ;


 int MBEDTLS_ASN1_BIT_STRING ;
 int MBEDTLS_ERR_ASN1_INVALID_LENGTH ;
 int MBEDTLS_ERR_ASN1_LENGTH_MISMATCH ;
 int MBEDTLS_ERR_ASN1_OUT_OF_DATA ;
 int mbedtls_asn1_get_tag (unsigned char**,unsigned char const*,int*,int ) ;

int mbedtls_asn1_get_bitstring( unsigned char **p, const unsigned char *end,
                        mbedtls_asn1_bitstring *bs)
{
    int ret;


    if( ( ret = mbedtls_asn1_get_tag( p, end, &bs->len, MBEDTLS_ASN1_BIT_STRING ) ) != 0 )
        return( ret );


    if( bs->len < 1 )
        return( MBEDTLS_ERR_ASN1_OUT_OF_DATA );
    bs->len -= 1;


    bs->unused_bits = **p;
    if( bs->unused_bits > 7 )
        return( MBEDTLS_ERR_ASN1_INVALID_LENGTH );
    (*p)++;


    bs->p = *p;
    *p += bs->len;

    if( *p != end )
        return( MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );

    return( 0 );
}
