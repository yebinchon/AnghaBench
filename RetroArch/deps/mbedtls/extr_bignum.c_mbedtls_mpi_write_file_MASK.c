#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  s ;
typedef  int /*<<< orphan*/  mbedtls_mpi ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MBEDTLS_ERR_MPI_FILE_IO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MBEDTLS_MPI_RW_BUFFER_SIZE ; 
 size_t FUNC1 (char const*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int,char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC5 (char const*) ; 

int FUNC6( const char *p, const mbedtls_mpi *X, int radix, FILE *fout )
{
    int ret;
    size_t n, slen, plen;
    /*
     * Buffer should have space for (short) label and decimal formatted MPI,
     * newline characters and '\0'
     */
    char s[ MBEDTLS_MPI_RW_BUFFER_SIZE ];

    FUNC4( s, 0, sizeof( s ) );

    FUNC0( FUNC2( X, radix, s, sizeof( s ) - 2, &n ) );

    if( p == NULL ) p = "";

    plen = FUNC5( p );
    slen = FUNC5( s );
    s[slen++] = '\r';
    s[slen++] = '\n';

    if( fout != NULL )
    {
        if( FUNC1( p, 1, plen, fout ) != plen ||
            FUNC1( s, 1, slen, fout ) != slen )
            return( MBEDTLS_ERR_MPI_FILE_IO_ERROR );
    }
    else
        FUNC3( "%s%s", p, s );

cleanup:

    return( ret );
}