#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  cipher_ctx; } ;
typedef  TYPE_1__ mbedtls_gcm_context ;
struct TYPE_8__ {int block_size; } ;
typedef  TYPE_2__ mbedtls_cipher_info_t ;
typedef  int /*<<< orphan*/  mbedtls_cipher_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  MBEDTLS_ENCRYPT ; 
 int MBEDTLS_ERR_GCM_BAD_INPUT ; 
 int /*<<< orphan*/  MBEDTLS_MODE_ECB ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char const*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_2__ const*) ; 

int FUNC5( mbedtls_gcm_context *ctx,
                        mbedtls_cipher_id_t cipher,
                        const unsigned char *key,
                        unsigned int keybits )
{
    int ret;
    const mbedtls_cipher_info_t *cipher_info;

    cipher_info = FUNC2( cipher, keybits, MBEDTLS_MODE_ECB );
    if( cipher_info == NULL )
        return( MBEDTLS_ERR_GCM_BAD_INPUT );

    if( cipher_info->block_size != 16 )
        return( MBEDTLS_ERR_GCM_BAD_INPUT );

    FUNC1( &ctx->cipher_ctx );

    if( ( ret = FUNC4( &ctx->cipher_ctx, cipher_info ) ) != 0 )
        return( ret );

    if( ( ret = FUNC3( &ctx->cipher_ctx, key, keybits,
                               MBEDTLS_ENCRYPT ) ) != 0 )
    {
        return( ret );
    }

    if( ( ret = FUNC0( ctx ) ) != 0 )
        return( ret );

    return( 0 );
}