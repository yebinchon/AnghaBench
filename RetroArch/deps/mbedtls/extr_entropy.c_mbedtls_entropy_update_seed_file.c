
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_entropy_context ;
typedef int FILE ;


 int MBEDTLS_ENTROPY_MAX_SEED_SIZE ;
 int MBEDTLS_ERR_ENTROPY_FILE_IO_ERROR ;
 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (unsigned char*,int,size_t,int *) ;
 int fseek (int *,int ,int ) ;
 scalar_t__ ftell (int *) ;
 int mbedtls_entropy_update_manual (int *,unsigned char*,size_t) ;
 int mbedtls_entropy_write_seed_file (int *,char const*) ;

int mbedtls_entropy_update_seed_file( mbedtls_entropy_context *ctx, const char *path )
{
    FILE *f;
    size_t n;
    unsigned char buf[ MBEDTLS_ENTROPY_MAX_SEED_SIZE ];

    if( ( f = fopen( path, "rb" ) ) == ((void*)0) )
        return( MBEDTLS_ERR_ENTROPY_FILE_IO_ERROR );

    fseek( f, 0, SEEK_END );
    n = (size_t) ftell( f );
    fseek( f, 0, SEEK_SET );

    if( n > MBEDTLS_ENTROPY_MAX_SEED_SIZE )
        n = MBEDTLS_ENTROPY_MAX_SEED_SIZE;

    if( fread( buf, 1, n, f ) != n )
    {
        fclose( f );
        return( MBEDTLS_ERR_ENTROPY_FILE_IO_ERROR );
    }

    fclose( f );

    mbedtls_entropy_update_manual( ctx, buf, n );

    return( mbedtls_entropy_write_seed_file( ctx, path ) );
}
