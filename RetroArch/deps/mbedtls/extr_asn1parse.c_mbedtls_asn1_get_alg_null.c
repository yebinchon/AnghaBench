
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ tag; scalar_t__ len; } ;
typedef TYPE_1__ mbedtls_asn1_buf ;


 scalar_t__ MBEDTLS_ASN1_NULL ;
 int MBEDTLS_ERR_ASN1_INVALID_DATA ;
 int mbedtls_asn1_get_alg (unsigned char**,unsigned char const*,TYPE_1__*,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

int mbedtls_asn1_get_alg_null( unsigned char **p,
                       const unsigned char *end,
                       mbedtls_asn1_buf *alg )
{
    int ret;
    mbedtls_asn1_buf params;

    memset( &params, 0, sizeof(mbedtls_asn1_buf) );

    if( ( ret = mbedtls_asn1_get_alg( p, end, alg, &params ) ) != 0 )
        return( ret );

    if( ( params.tag != MBEDTLS_ASN1_NULL && params.tag != 0 ) || params.len != 0 )
        return( MBEDTLS_ERR_ASN1_INVALID_DATA );

    return( 0 );
}
