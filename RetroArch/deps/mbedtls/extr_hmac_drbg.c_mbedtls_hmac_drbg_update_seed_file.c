
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_hmac_drbg_context ;
typedef int FILE ;


 int MBEDTLS_ERR_HMAC_DRBG_FILE_IO_ERROR ;
 int MBEDTLS_ERR_HMAC_DRBG_INPUT_TOO_BIG ;
 int MBEDTLS_HMAC_DRBG_MAX_INPUT ;
 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (unsigned char*,int,size_t,int *) ;
 int fseek (int *,int ,int ) ;
 scalar_t__ ftell (int *) ;
 int mbedtls_hmac_drbg_update (int *,unsigned char*,size_t) ;
 int mbedtls_hmac_drbg_write_seed_file (int *,char const*) ;

int mbedtls_hmac_drbg_update_seed_file( mbedtls_hmac_drbg_context *ctx, const char *path )
{
    FILE *f;
    size_t n;
    unsigned char buf[ MBEDTLS_HMAC_DRBG_MAX_INPUT ];

    if( ( f = fopen( path, "rb" ) ) == ((void*)0) )
        return( MBEDTLS_ERR_HMAC_DRBG_FILE_IO_ERROR );

    fseek( f, 0, SEEK_END );
    n = (size_t) ftell( f );
    fseek( f, 0, SEEK_SET );

    if( n > MBEDTLS_HMAC_DRBG_MAX_INPUT )
    {
        fclose( f );
        return( MBEDTLS_ERR_HMAC_DRBG_INPUT_TOO_BIG );
    }

    if( fread( buf, 1, n, f ) != n )
    {
        fclose( f );
        return( MBEDTLS_ERR_HMAC_DRBG_FILE_IO_ERROR );
    }

    fclose( f );

    mbedtls_hmac_drbg_update( ctx, buf, n );

    return( mbedtls_hmac_drbg_write_seed_file( ctx, path ) );
}
