
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char tag; unsigned char* p; int len; } ;
typedef TYPE_1__ mbedtls_asn1_buf ;


 int MBEDTLS_ASN1_CONSTRUCTED ;
 unsigned char MBEDTLS_ASN1_OID ;
 int MBEDTLS_ASN1_SEQUENCE ;
 int MBEDTLS_ERR_ASN1_LENGTH_MISMATCH ;
 int MBEDTLS_ERR_ASN1_UNEXPECTED_TAG ;
 int MBEDTLS_ERR_PK_KEY_INVALID_FORMAT ;
 int mbedtls_asn1_get_tag (unsigned char**,unsigned char const*,int *,int) ;

__attribute__((used)) static int pk_get_ecparams( unsigned char **p, const unsigned char *end,
                            mbedtls_asn1_buf *params )
{
    int ret;


    params->tag = **p;
    if( params->tag != MBEDTLS_ASN1_OID



            )
    {
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT +
                MBEDTLS_ERR_ASN1_UNEXPECTED_TAG );
    }

    if( ( ret = mbedtls_asn1_get_tag( p, end, &params->len, params->tag ) ) != 0 )
    {
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );
    }

    params->p = *p;
    *p += params->len;

    if( *p != end )
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT +
                MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );

    return( 0 );
}
