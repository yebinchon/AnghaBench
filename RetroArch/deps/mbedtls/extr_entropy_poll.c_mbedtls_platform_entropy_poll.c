
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int MBEDTLS_ERR_ENTROPY_SOURCE_FAILED ;
 scalar_t__ check_version_3_17_plus () ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 size_t fread (unsigned char*,int,size_t,int *) ;
 int getrandom_wrapper (unsigned char*,size_t,int ) ;
 int has_getrandom ;

int mbedtls_platform_entropy_poll( void *data,
                           unsigned char *output, size_t len, size_t *olen )
{
    FILE *file;
    size_t read_len;
    ((void) data);
    *olen = 0;

    file = fopen( "/dev/urandom", "rb" );
    if( file == ((void*)0) )
        return( MBEDTLS_ERR_ENTROPY_SOURCE_FAILED );

    read_len = fread( output, 1, len, file );
    if( read_len != len )
    {
        fclose( file );
        return( MBEDTLS_ERR_ENTROPY_SOURCE_FAILED );
    }

    fclose( file );
    *olen = len;

    return( 0 );
}
