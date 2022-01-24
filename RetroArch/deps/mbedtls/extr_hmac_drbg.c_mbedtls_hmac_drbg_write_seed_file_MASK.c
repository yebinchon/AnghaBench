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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MBEDTLS_ERR_HMAC_DRBG_FILE_IO_ERROR ; 
 int MBEDTLS_HMAC_DRBG_MAX_INPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int FUNC2 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 

int FUNC4( mbedtls_hmac_drbg_context *ctx, const char *path )
{
    int ret;
    FILE *f;
    unsigned char buf[ MBEDTLS_HMAC_DRBG_MAX_INPUT ];

    if( ( f = FUNC1( path, "wb" ) ) == NULL )
        return( MBEDTLS_ERR_HMAC_DRBG_FILE_IO_ERROR );

    if( ( ret = FUNC3( ctx, buf, sizeof( buf ) ) ) != 0 )
        goto exit;

    if( FUNC2( buf, 1, sizeof( buf ), f ) != sizeof( buf ) )
    {
        ret = MBEDTLS_ERR_HMAC_DRBG_FILE_IO_ERROR;
        goto exit;
    }

    ret = 0;

exit:
    FUNC0( f );
    return( ret );
}