
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* p; int len; int tag; } ;
typedef TYPE_1__ mbedtls_asn1_buf ;


 int MBEDTLS_ASN1_CONSTRUCTED ;
 int MBEDTLS_ASN1_OCTET_STRING ;
 int MBEDTLS_ASN1_SEQUENCE ;
 int MBEDTLS_ERR_ASN1_LENGTH_MISMATCH ;
 int MBEDTLS_ERR_ASN1_UNEXPECTED_TAG ;
 int MBEDTLS_ERR_PKCS12_PBE_INVALID_FORMAT ;
 int mbedtls_asn1_get_int (unsigned char**,unsigned char const*,int*) ;
 int mbedtls_asn1_get_tag (unsigned char**,unsigned char const*,int*,int ) ;

__attribute__((used)) static int pkcs12_parse_pbe_params( mbedtls_asn1_buf *params,
                                    mbedtls_asn1_buf *salt, int *iterations )
{
    int ret;
    unsigned char **p = &params->p;
    const unsigned char *end = params->p + params->len;
    if( params->tag != ( MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) )
        return( MBEDTLS_ERR_PKCS12_PBE_INVALID_FORMAT +
                MBEDTLS_ERR_ASN1_UNEXPECTED_TAG );

    if( ( ret = mbedtls_asn1_get_tag( p, end, &salt->len, MBEDTLS_ASN1_OCTET_STRING ) ) != 0 )
        return( MBEDTLS_ERR_PKCS12_PBE_INVALID_FORMAT + ret );

    salt->p = *p;
    *p += salt->len;

    if( ( ret = mbedtls_asn1_get_int( p, end, iterations ) ) != 0 )
        return( MBEDTLS_ERR_PKCS12_PBE_INVALID_FORMAT + ret );

    if( *p != end )
        return( MBEDTLS_ERR_PKCS12_PBE_INVALID_FORMAT +
                MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );

    return( 0 );
}
