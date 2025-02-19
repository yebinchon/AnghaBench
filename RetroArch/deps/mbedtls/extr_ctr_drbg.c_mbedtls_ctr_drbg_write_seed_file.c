
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_ctr_drbg_context ;
typedef int FILE ;


 int MBEDTLS_CTR_DRBG_MAX_INPUT ;
 int MBEDTLS_ERR_CTR_DRBG_FILE_IO_ERROR ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fwrite (unsigned char*,int,int,int *) ;
 int mbedtls_ctr_drbg_random (int *,unsigned char*,int) ;

int mbedtls_ctr_drbg_write_seed_file( mbedtls_ctr_drbg_context *ctx, const char *path )
{
    int ret = MBEDTLS_ERR_CTR_DRBG_FILE_IO_ERROR;
    FILE *f;
    unsigned char buf[ MBEDTLS_CTR_DRBG_MAX_INPUT ];

    if( ( f = fopen( path, "wb" ) ) == ((void*)0) )
        return( MBEDTLS_ERR_CTR_DRBG_FILE_IO_ERROR );

    if( ( ret = mbedtls_ctr_drbg_random( ctx, buf, MBEDTLS_CTR_DRBG_MAX_INPUT ) ) != 0 )
        goto exit;

    if( fwrite( buf, 1, MBEDTLS_CTR_DRBG_MAX_INPUT, f ) != MBEDTLS_CTR_DRBG_MAX_INPUT )
    {
        ret = MBEDTLS_ERR_CTR_DRBG_FILE_IO_ERROR;
        goto exit;
    }

    ret = 0;

exit:
    fclose( f );
    return( ret );
}
