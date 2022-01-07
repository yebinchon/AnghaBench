
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_hmac_drbg_context ;
typedef int buf ;
typedef int FILE ;


 int MBEDTLS_ERR_HMAC_DRBG_FILE_IO_ERROR ;
 int MBEDTLS_HMAC_DRBG_MAX_INPUT ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fwrite (unsigned char*,int,int,int *) ;
 int mbedtls_hmac_drbg_random (int *,unsigned char*,int) ;

int mbedtls_hmac_drbg_write_seed_file( mbedtls_hmac_drbg_context *ctx, const char *path )
{
    int ret;
    FILE *f;
    unsigned char buf[ MBEDTLS_HMAC_DRBG_MAX_INPUT ];

    if( ( f = fopen( path, "wb" ) ) == ((void*)0) )
        return( MBEDTLS_ERR_HMAC_DRBG_FILE_IO_ERROR );

    if( ( ret = mbedtls_hmac_drbg_random( ctx, buf, sizeof( buf ) ) ) != 0 )
        goto exit;

    if( fwrite( buf, 1, sizeof( buf ), f ) != sizeof( buf ) )
    {
        ret = MBEDTLS_ERR_HMAC_DRBG_FILE_IO_ERROR;
        goto exit;
    }

    ret = 0;

exit:
    fclose( f );
    return( ret );
}
