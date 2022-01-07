
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_dhm_context ;


 int load_file (char const*,unsigned char**,size_t*) ;
 int mbedtls_dhm_parse_dhm (int *,unsigned char*,size_t) ;
 int mbedtls_free (unsigned char*) ;
 int mbedtls_zeroize (unsigned char*,size_t) ;

int mbedtls_dhm_parse_dhmfile( mbedtls_dhm_context *dhm, const char *path )
{
    int ret;
    size_t n;
    unsigned char *buf;

    if( ( ret = load_file( path, &buf, &n ) ) != 0 )
        return( ret );

    ret = mbedtls_dhm_parse_dhm( dhm, buf, n );

    mbedtls_zeroize( buf, n );
    mbedtls_free( buf );

    return( ret );
}
