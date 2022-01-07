
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_pk_context ;


 int mbedtls_free (unsigned char*) ;
 int mbedtls_pk_load_file (char const*,unsigned char**,size_t*) ;
 int mbedtls_pk_parse_public_key (int *,unsigned char*,size_t) ;
 int mbedtls_zeroize (unsigned char*,size_t) ;

int mbedtls_pk_parse_public_keyfile( mbedtls_pk_context *ctx, const char *path )
{
    int ret;
    size_t n;
    unsigned char *buf;

    if( ( ret = mbedtls_pk_load_file( path, &buf, &n ) ) != 0 )
        return( ret );

    ret = mbedtls_pk_parse_public_key( ctx, buf, n );

    mbedtls_zeroize( buf, n );
    mbedtls_free( buf );

    return( ret );
}
