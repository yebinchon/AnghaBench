
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_x509_crl ;


 int mbedtls_free (unsigned char*) ;
 int mbedtls_pk_load_file (char const*,unsigned char**,size_t*) ;
 int mbedtls_x509_crl_parse (int *,unsigned char*,size_t) ;
 int mbedtls_zeroize (unsigned char*,size_t) ;

int mbedtls_x509_crl_parse_file( mbedtls_x509_crl *chain, const char *path )
{
    int ret;
    size_t n;
    unsigned char *buf;

    if( ( ret = mbedtls_pk_load_file( path, &buf, &n ) ) != 0 )
        return( ret );

    ret = mbedtls_x509_crl_parse( chain, buf, n );

    mbedtls_zeroize( buf, n );
    mbedtls_free( buf );

    return( ret );
}
