
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_x509_buf ;


 int MBEDTLS_ASN1_CONSTRUCTED ;
 int MBEDTLS_ASN1_SEQUENCE ;
 int MBEDTLS_ERR_ASN1_LENGTH_MISMATCH ;
 int MBEDTLS_ERR_ASN1_UNEXPECTED_TAG ;
 int MBEDTLS_ERR_X509_INVALID_EXTENSIONS ;
 int mbedtls_asn1_get_tag (unsigned char**,unsigned char const*,size_t*,int) ;
 int mbedtls_x509_get_ext (unsigned char**,unsigned char const*,int *,int ) ;

__attribute__((used)) static int x509_get_crl_ext( unsigned char **p,
                             const unsigned char *end,
                             mbedtls_x509_buf *ext )
{
    int ret;
    size_t len = 0;


    if( ( ret = mbedtls_x509_get_ext( p, end, ext, 0) ) != 0 )
    {
        if( ret == MBEDTLS_ERR_ASN1_UNEXPECTED_TAG )
            return( 0 );

        return( ret );
    }

    while( *p < end )
    {
        if( ( ret = mbedtls_asn1_get_tag( p, end, &len,
                MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
            return( MBEDTLS_ERR_X509_INVALID_EXTENSIONS + ret );

        *p += len;
    }

    if( *p != end )
        return( MBEDTLS_ERR_X509_INVALID_EXTENSIONS +
                MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );

    return( 0 );
}
