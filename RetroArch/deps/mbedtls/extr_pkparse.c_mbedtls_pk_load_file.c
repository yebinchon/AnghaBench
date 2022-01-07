
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int MBEDTLS_ERR_PK_ALLOC_FAILED ;
 int MBEDTLS_ERR_PK_FILE_IO_ERROR ;
 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (unsigned char*,int,size_t,int *) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 unsigned char* mbedtls_calloc (int,size_t) ;
 int mbedtls_free (unsigned char*) ;
 int * strstr (char const*,char*) ;

int mbedtls_pk_load_file( const char *path, unsigned char **buf, size_t *n )
{
    FILE *f;
    long size;

    if( ( f = fopen( path, "rb" ) ) == ((void*)0) )
        return( MBEDTLS_ERR_PK_FILE_IO_ERROR );

    fseek( f, 0, SEEK_END );
    if( ( size = ftell( f ) ) == -1 )
    {
        fclose( f );
        return( MBEDTLS_ERR_PK_FILE_IO_ERROR );
    }
    fseek( f, 0, SEEK_SET );

    *n = (size_t) size;

    if( *n + 1 == 0 ||
        ( *buf = mbedtls_calloc( 1, *n + 1 ) ) == ((void*)0) )
    {
        fclose( f );
        return( MBEDTLS_ERR_PK_ALLOC_FAILED );
    }

    if( fread( *buf, 1, *n, f ) != *n )
    {
        fclose( f );
        mbedtls_free( *buf );
        return( MBEDTLS_ERR_PK_FILE_IO_ERROR );
    }

    fclose( f );

    (*buf)[*n] = '\0';

    if( strstr( (const char *) *buf, "-----BEGIN " ) != ((void*)0) )
        ++*n;

    return( 0 );
}
