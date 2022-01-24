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
typedef  int /*<<< orphan*/  mbedtls_hmac_drbg_context ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MBEDTLS_ERR_HMAC_DRBG_FILE_IO_ERROR ; 
 int MBEDTLS_ERR_HMAC_DRBG_INPUT_TOO_BIG ; 
 int MBEDTLS_HMAC_DRBG_MAX_INPUT ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 size_t FUNC2 (unsigned char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*) ; 

int FUNC7( mbedtls_hmac_drbg_context *ctx, const char *path )
{
    FILE *f;
    size_t n;
    unsigned char buf[ MBEDTLS_HMAC_DRBG_MAX_INPUT ];

    if( ( f = FUNC1( path, "rb" ) ) == NULL )
        return( MBEDTLS_ERR_HMAC_DRBG_FILE_IO_ERROR );

    FUNC3( f, 0, SEEK_END );
    n = (size_t) FUNC4( f );
    FUNC3( f, 0, SEEK_SET );

    if( n > MBEDTLS_HMAC_DRBG_MAX_INPUT )
    {
        FUNC0( f );
        return( MBEDTLS_ERR_HMAC_DRBG_INPUT_TOO_BIG );
    }

    if( FUNC2( buf, 1, n, f ) != n )
    {
        FUNC0( f );
        return( MBEDTLS_ERR_HMAC_DRBG_FILE_IO_ERROR );
    }

    FUNC0( f );

    FUNC5( ctx, buf, n );

    return( FUNC6( ctx, path ) );
}