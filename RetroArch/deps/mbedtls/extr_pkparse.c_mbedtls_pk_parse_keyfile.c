
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_pk_context ;


 int mbedtls_free (unsigned char*) ;
 int mbedtls_pk_load_file (char const*,unsigned char**,size_t*) ;
 int mbedtls_pk_parse_key (int *,unsigned char*,size_t,unsigned char const*,int ) ;
 int mbedtls_zeroize (unsigned char*,size_t) ;
 int strlen (char const*) ;

int mbedtls_pk_parse_keyfile( mbedtls_pk_context *ctx,
                      const char *path, const char *pwd )
{
    int ret;
    size_t n;
    unsigned char *buf;

    if( ( ret = mbedtls_pk_load_file( path, &buf, &n ) ) != 0 )
        return( ret );

    if( pwd == ((void*)0) )
        ret = mbedtls_pk_parse_key( ctx, buf, n, ((void*)0), 0 );
    else
        ret = mbedtls_pk_parse_key( ctx, buf, n,
                (const unsigned char *) pwd, strlen( pwd ) );

    mbedtls_zeroize( buf, n );
    mbedtls_free( buf );

    return( ret );
}
