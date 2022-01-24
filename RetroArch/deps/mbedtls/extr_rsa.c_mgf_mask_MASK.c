#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  md_info; } ;
typedef  TYPE_1__ mbedtls_md_context_t ;
typedef  int /*<<< orphan*/  mask ;

/* Variables and functions */
 int MBEDTLS_MD_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned char*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6( unsigned char *dst, size_t dlen, unsigned char *src,
                      size_t slen, mbedtls_md_context_t *md_ctx )
{
    unsigned char mask[MBEDTLS_MD_MAX_SIZE];
    unsigned char counter[4];
    unsigned char *p;
    unsigned int hlen;
    size_t i, use_len;

    FUNC5( mask, 0, MBEDTLS_MD_MAX_SIZE );
    FUNC5( counter, 0, 4 );

    hlen = FUNC1( md_ctx->md_info );

    /* Generate and apply dbMask */
    p = dst;

    while( dlen > 0 )
    {
        use_len = hlen;
        if( dlen < hlen )
            use_len = dlen;

        FUNC2( md_ctx );
        FUNC3( md_ctx, src, slen );
        FUNC3( md_ctx, counter, 4 );
        FUNC0( md_ctx, mask );

        for( i = 0; i < use_len; ++i )
            *p++ ^= mask[i];

        counter[3]++;

        dlen -= use_len;
    }

    FUNC4( mask, sizeof( mask ) );
}