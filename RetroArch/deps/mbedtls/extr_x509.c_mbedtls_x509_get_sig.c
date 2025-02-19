
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tag; size_t len; unsigned char* p; } ;
typedef TYPE_1__ mbedtls_x509_buf ;


 int MBEDTLS_ERR_ASN1_OUT_OF_DATA ;
 int MBEDTLS_ERR_X509_INVALID_SIGNATURE ;
 int mbedtls_asn1_get_bitstring_null (unsigned char**,unsigned char const*,size_t*) ;

int mbedtls_x509_get_sig( unsigned char **p, const unsigned char *end, mbedtls_x509_buf *sig )
{
    int ret;
    size_t len;
    int tag_type;

    if( ( end - *p ) < 1 )
        return( MBEDTLS_ERR_X509_INVALID_SIGNATURE +
                MBEDTLS_ERR_ASN1_OUT_OF_DATA );

    tag_type = **p;

    if( ( ret = mbedtls_asn1_get_bitstring_null( p, end, &len ) ) != 0 )
        return( MBEDTLS_ERR_X509_INVALID_SIGNATURE + ret );

    sig->tag = tag_type;
    sig->len = len;
    sig->p = *p;

    *p += len;

    return( 0 );
}
