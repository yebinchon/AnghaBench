
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_x509write_cert ;


 int MBEDTLS_ERR_X509_FEATURE_UNAVAILABLE ;
 int MBEDTLS_OID_KEY_USAGE ;
 int MBEDTLS_OID_SIZE (int ) ;
 int mbedtls_asn1_write_bitstring (unsigned char**,unsigned char*,unsigned char*,int) ;
 int mbedtls_x509write_crt_set_extension (int *,int ,int ,int,unsigned char*,int) ;

int mbedtls_x509write_crt_set_key_usage( mbedtls_x509write_cert *ctx,
                                         unsigned int key_usage )
{
    unsigned char buf[4], ku;
    unsigned char *c;
    int ret;


    if( ( key_usage & ~0xfe ) != 0 )
        return( MBEDTLS_ERR_X509_FEATURE_UNAVAILABLE );

    c = buf + 4;
    ku = (unsigned char) key_usage;

    if( ( ret = mbedtls_asn1_write_bitstring( &c, buf, &ku, 7 ) ) != 4 )
        return( ret );

    ret = mbedtls_x509write_crt_set_extension( ctx, MBEDTLS_OID_KEY_USAGE,
                                       MBEDTLS_OID_SIZE( MBEDTLS_OID_KEY_USAGE ),
                                       1, buf, 4 );
    if( ret != 0 )
        return( ret );

    return( 0 );
}
