#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ padding; size_t len; scalar_t__ hash_id; } ;
typedef  TYPE_1__ mbedtls_rsa_context ;
typedef  int /*<<< orphan*/  mbedtls_md_type_t ;
typedef  int /*<<< orphan*/  mbedtls_md_info_t ;
typedef  int /*<<< orphan*/  mbedtls_md_context_t ;

/* Variables and functions */
 int MBEDTLS_ERR_RSA_BAD_INPUT_DATA ; 
 int MBEDTLS_ERR_RSA_RNG_FAILED ; 
 scalar_t__ MBEDTLS_RSA_PKCS_V21 ; 
 int MBEDTLS_RSA_PRIVATE ; 
 int MBEDTLS_RSA_PUBLIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,unsigned char const*,size_t,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int (*) (void*,unsigned char*,size_t),void*,unsigned char*,unsigned char*) ; 
 int FUNC7 (TYPE_1__*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,unsigned int,unsigned char*,size_t,int /*<<< orphan*/ *) ; 

int FUNC11( mbedtls_rsa_context *ctx,
                            int (*f_rng)(void *, unsigned char *, size_t),
                            void *p_rng,
                            int mode,
                            const unsigned char *label, size_t label_len,
                            size_t ilen,
                            const unsigned char *input,
                            unsigned char *output )
{
    size_t olen;
    int ret;
    unsigned char *p = output;
    unsigned int hlen;
    const mbedtls_md_info_t *md_info;
    mbedtls_md_context_t md_ctx;

    if( mode == MBEDTLS_RSA_PRIVATE && ctx->padding != MBEDTLS_RSA_PKCS_V21 )
        return( MBEDTLS_ERR_RSA_BAD_INPUT_DATA );

    if( f_rng == NULL )
        return( MBEDTLS_ERR_RSA_BAD_INPUT_DATA );

    md_info = FUNC3( (mbedtls_md_type_t) ctx->hash_id );
    if( md_info == NULL )
        return( MBEDTLS_ERR_RSA_BAD_INPUT_DATA );

    olen = ctx->len;
    hlen = FUNC2( md_info );

    /* first comparison checks for overflow */
    if( ilen + 2 * hlen + 2 < ilen || olen < ilen + 2 * hlen + 2 )
        return( MBEDTLS_ERR_RSA_BAD_INPUT_DATA );

    FUNC9( output, 0, olen );

    *p++ = 0;

    /* Generate a random octet string seed */
    if( ( ret = f_rng( p_rng, p, hlen ) ) != 0 )
        return( MBEDTLS_ERR_RSA_RNG_FAILED + ret );

    p += hlen;

    /* Construct DB */
    FUNC0( md_info, label, label_len, p );
    p += hlen;
    p += olen - 2 * hlen - 2 - ilen;
    *p++ = 1;
    FUNC8( p, input, ilen );

    FUNC4( &md_ctx );
    if( ( ret = FUNC5( &md_ctx, md_info, 0 ) ) != 0 )
    {
        FUNC1( &md_ctx );
        return( ret );
    }

    /* maskedDB: Apply dbMask to DB */
    FUNC10( output + hlen + 1, olen - hlen - 1, output + 1, hlen,
               &md_ctx );

    /* maskedSeed: Apply seedMask to seed */
    FUNC10( output + 1, hlen, output + hlen + 1, olen - hlen - 1,
               &md_ctx );

    FUNC1( &md_ctx );

    return( ( mode == MBEDTLS_RSA_PUBLIC )
            ? FUNC7(  ctx, output, output )
            : FUNC6( ctx, f_rng, p_rng, output, output ) );
}