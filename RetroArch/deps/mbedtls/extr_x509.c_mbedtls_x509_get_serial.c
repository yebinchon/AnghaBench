
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* p; int len; int tag; } ;
typedef TYPE_1__ mbedtls_x509_buf ;


 int MBEDTLS_ASN1_CONTEXT_SPECIFIC ;
 unsigned char MBEDTLS_ASN1_INTEGER ;
 int MBEDTLS_ASN1_PRIMITIVE ;
 int MBEDTLS_ERR_ASN1_OUT_OF_DATA ;
 int MBEDTLS_ERR_ASN1_UNEXPECTED_TAG ;
 int MBEDTLS_ERR_X509_INVALID_SERIAL ;
 int mbedtls_asn1_get_len (unsigned char**,unsigned char const*,int *) ;

int mbedtls_x509_get_serial( unsigned char **p, const unsigned char *end,
                     mbedtls_x509_buf *serial )
{
    int ret;

    if( ( end - *p ) < 1 )
        return( MBEDTLS_ERR_X509_INVALID_SERIAL +
                MBEDTLS_ERR_ASN1_OUT_OF_DATA );

    if( **p != ( MBEDTLS_ASN1_CONTEXT_SPECIFIC | MBEDTLS_ASN1_PRIMITIVE | 2 ) &&
        **p != MBEDTLS_ASN1_INTEGER )
        return( MBEDTLS_ERR_X509_INVALID_SERIAL +
                MBEDTLS_ERR_ASN1_UNEXPECTED_TAG );

    serial->tag = *(*p)++;

    if( ( ret = mbedtls_asn1_get_len( p, end, &serial->len ) ) != 0 )
        return( MBEDTLS_ERR_X509_INVALID_SERIAL + ret );

    serial->p = *p;
    *p += serial->len;

    return( 0 );
}
