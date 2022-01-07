
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; unsigned char* p; int * member_2; int member_1; int member_0; } ;
typedef TYPE_1__ mbedtls_x509_bitstring ;


 int MBEDTLS_ERR_ASN1_INVALID_LENGTH ;
 int MBEDTLS_ERR_X509_INVALID_EXTENSIONS ;
 int mbedtls_asn1_get_bitstring (unsigned char**,unsigned char const*,TYPE_1__*) ;

__attribute__((used)) static int x509_get_ns_cert_type( unsigned char **p,
                                       const unsigned char *end,
                                       unsigned char *ns_cert_type)
{
    int ret;
    mbedtls_x509_bitstring bs = { 0, 0, ((void*)0) };

    if( ( ret = mbedtls_asn1_get_bitstring( p, end, &bs ) ) != 0 )
        return( MBEDTLS_ERR_X509_INVALID_EXTENSIONS + ret );

    if( bs.len != 1 )
        return( MBEDTLS_ERR_X509_INVALID_EXTENSIONS +
                MBEDTLS_ERR_ASN1_INVALID_LENGTH );


    *ns_cert_type = *bs.p;
    return( 0 );
}
