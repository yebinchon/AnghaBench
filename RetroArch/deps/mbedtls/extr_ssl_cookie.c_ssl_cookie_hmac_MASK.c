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
typedef  int /*<<< orphan*/  mbedtls_md_context_t ;

/* Variables and functions */
 size_t COOKIE_HMAC_LEN ; 
 int COOKIE_MD_OUTLEN ; 
 int MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL ; 
 int MBEDTLS_ERR_SSL_INTERNAL_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,size_t) ; 

__attribute__((used)) static int FUNC4( mbedtls_md_context_t *hmac_ctx,
                            const unsigned char time[4],
                            unsigned char **p, unsigned char *end,
                            const unsigned char *cli_id, size_t cli_id_len )
{
    unsigned char hmac_out[COOKIE_MD_OUTLEN];

    if( (size_t)( end - *p ) < COOKIE_HMAC_LEN )
        return( MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL );

    if( FUNC1(  hmac_ctx ) != 0 ||
        FUNC2( hmac_ctx, time, 4 ) != 0 ||
        FUNC2( hmac_ctx, cli_id, cli_id_len ) != 0 ||
        FUNC0( hmac_ctx, hmac_out ) != 0 )
    {
        return( MBEDTLS_ERR_SSL_INTERNAL_ERROR );
    }

    FUNC3( *p, hmac_out, COOKIE_HMAC_LEN );
    *p += COOKIE_HMAC_LEN;

    return( 0 );
}