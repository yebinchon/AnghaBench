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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MBEDTLS_ERR_DHM_ALLOC_FAILED ; 
 int MBEDTLS_ERR_DHM_FILE_IO_ERROR ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 size_t FUNC2 (unsigned char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int,size_t) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 

__attribute__((used)) static int FUNC8( const char *path, unsigned char **buf, size_t *n )
{
    FILE *f;
    long size;

    if( ( f = FUNC1( path, "rb" ) ) == NULL )
        return( MBEDTLS_ERR_DHM_FILE_IO_ERROR );

    FUNC3( f, 0, SEEK_END );
    if( ( size = FUNC4( f ) ) == -1 )
    {
        FUNC0( f );
        return( MBEDTLS_ERR_DHM_FILE_IO_ERROR );
    }
    FUNC3( f, 0, SEEK_SET );

    *n = (size_t) size;

    if( *n + 1 == 0 ||
        ( *buf = (unsigned char*)FUNC5( 1, *n + 1 ) ) == NULL )
    {
        FUNC0( f );
        return( MBEDTLS_ERR_DHM_ALLOC_FAILED );
    }

    if( FUNC2( *buf, 1, *n, f ) != *n )
    {
        FUNC0( f );
        FUNC6( *buf );
        return( MBEDTLS_ERR_DHM_FILE_IO_ERROR );
    }

    FUNC0( f );

    (*buf)[*n] = '\0';

    if( FUNC7( (const char *) *buf, "-----BEGIN " ) != NULL )
        ++*n;

    return( 0 );
}