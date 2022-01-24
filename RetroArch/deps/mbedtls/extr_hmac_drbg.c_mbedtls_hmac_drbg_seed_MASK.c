#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mbedtls_md_info_t ;
struct TYPE_4__ {int (* f_entropy ) (void*,unsigned char*,size_t) ;size_t entropy_len; int /*<<< orphan*/  reseed_interval; void* p_entropy; int /*<<< orphan*/  V; int /*<<< orphan*/  md_ctx; } ;
typedef  TYPE_1__ mbedtls_hmac_drbg_context ;

/* Variables and functions */
 int /*<<< orphan*/  MBEDTLS_HMAC_DRBG_RESEED_INTERVAL ; 
 int FUNC0 (TYPE_1__*,unsigned char const*,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,size_t) ; 

int FUNC5( mbedtls_hmac_drbg_context *ctx,
                    const mbedtls_md_info_t * md_info,
                    int (*f_entropy)(void *, unsigned char *, size_t),
                    void *p_entropy,
                    const unsigned char *custom,
                    size_t len )
{
    int ret;
    size_t entropy_len, md_size;

    if( ( ret = FUNC3( &ctx->md_ctx, md_info, 1 ) ) != 0 )
        return( ret );

    md_size = FUNC1( md_info );

    /*
     * Set initial working state.
     * Use the V memory location, which is currently all 0, to initialize the
     * MD context with an all-zero key. Then set V to its initial value.
     */
    FUNC2( &ctx->md_ctx, ctx->V, md_size );
    FUNC4( ctx->V, 0x01, md_size );

    ctx->f_entropy = f_entropy;
    ctx->p_entropy = p_entropy;

    ctx->reseed_interval = MBEDTLS_HMAC_DRBG_RESEED_INTERVAL;

    /*
     * See SP800-57 5.6.1 (p. 65-66) for the security strength provided by
     * each hash function, then according to SP800-90A rev1 10.1 table 2,
     * min_entropy_len (in bits) is security_strength.
     *
     * (This also matches the sizes used in the NIST test vectors.)
     */
    entropy_len = md_size <= 20 ? 16 : /* 160-bits hash -> 128 bits */
                  md_size <= 28 ? 24 : /* 224-bits hash -> 192 bits */
                                  32;  /* better (256+) -> 256 bits */

    /*
     * For initialisation, use more entropy to emulate a nonce
     * (Again, matches test vectors.)
     */
    ctx->entropy_len = entropy_len * 3 / 2;

    if( ( ret = FUNC0( ctx, custom, len ) ) != 0 )
        return( ret );

    ctx->entropy_len = entropy_len;

    return( 0 );
}