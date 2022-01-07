
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_x509write_csr ;


 int MBEDTLS_OID_KEY_USAGE ;
 int MBEDTLS_OID_SIZE (int ) ;
 int mbedtls_asn1_write_bitstring (unsigned char**,unsigned char*,unsigned char*,int) ;
 int mbedtls_x509write_csr_set_extension (int *,int ,int ,unsigned char*,int) ;

int mbedtls_x509write_csr_set_key_usage( mbedtls_x509write_csr *ctx, unsigned char key_usage )
{
    unsigned char buf[4];
    unsigned char *c;
    int ret;

    c = buf + 4;

    if( ( ret = mbedtls_asn1_write_bitstring( &c, buf, &key_usage, 7 ) ) != 4 )
        return( ret );

    ret = mbedtls_x509write_csr_set_extension( ctx, MBEDTLS_OID_KEY_USAGE,
                                       MBEDTLS_OID_SIZE( MBEDTLS_OID_KEY_USAGE ),
                                       buf, 4 );
    if( ret != 0 )
        return( ret );

    return( 0 );
}
