
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s ;
typedef int mbedtls_mpi_uint ;
typedef int mbedtls_mpi ;
typedef int FILE ;


 int MBEDTLS_ERR_MPI_BUFFER_TOO_SMALL ;
 int MBEDTLS_ERR_MPI_FILE_IO_ERROR ;
 int MBEDTLS_MPI_RW_BUFFER_SIZE ;
 int * fgets (char*,int,int *) ;
 int mbedtls_mpi_read_string (int *,int,char*) ;
 int memset (char*,int ,int) ;
 scalar_t__ mpi_get_digit (int *,int,char) ;
 size_t strlen (char*) ;

int mbedtls_mpi_read_file( mbedtls_mpi *X, int radix, FILE *fin )
{
    mbedtls_mpi_uint d;
    size_t slen;
    char *p;




    char s[ MBEDTLS_MPI_RW_BUFFER_SIZE ];

    memset( s, 0, sizeof( s ) );
    if( fgets( s, sizeof( s ) - 1, fin ) == ((void*)0) )
        return( MBEDTLS_ERR_MPI_FILE_IO_ERROR );

    slen = strlen( s );
    if( slen == sizeof( s ) - 2 )
        return( MBEDTLS_ERR_MPI_BUFFER_TOO_SMALL );

    if( slen > 0 && s[slen - 1] == '\n' ) { slen--; s[slen] = '\0'; }
    if( slen > 0 && s[slen - 1] == '\r' ) { slen--; s[slen] = '\0'; }

    p = s + slen;
    while( p-- > s )
        if( mpi_get_digit( &d, radix, *p ) != 0 )
            break;

    return( mbedtls_mpi_read_string( X, radix, p + 1 ) );
}
