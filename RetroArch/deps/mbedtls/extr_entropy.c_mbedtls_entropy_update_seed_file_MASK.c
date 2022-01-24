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
typedef  int /*<<< orphan*/  mbedtls_entropy_context ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MBEDTLS_ENTROPY_MAX_SEED_SIZE ; 
 int MBEDTLS_ERR_ENTROPY_FILE_IO_ERROR ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 size_t FUNC2 (unsigned char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*) ; 

int FUNC7( mbedtls_entropy_context *ctx, const char *path )
{
    FILE *f;
    size_t n;
    unsigned char buf[ MBEDTLS_ENTROPY_MAX_SEED_SIZE ];

    if( ( f = FUNC1( path, "rb" ) ) == NULL )
        return( MBEDTLS_ERR_ENTROPY_FILE_IO_ERROR );

    FUNC3( f, 0, SEEK_END );
    n = (size_t) FUNC4( f );
    FUNC3( f, 0, SEEK_SET );

    if( n > MBEDTLS_ENTROPY_MAX_SEED_SIZE )
        n = MBEDTLS_ENTROPY_MAX_SEED_SIZE;

    if( FUNC2( buf, 1, n, f ) != n )
    {
        FUNC0( f );
        return( MBEDTLS_ERR_ENTROPY_FILE_IO_ERROR );
    }

    FUNC0( f );

    FUNC5( ctx, buf, n );

    return( FUNC6( ctx, path ) );
}