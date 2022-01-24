#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char uint32_t ;
struct TYPE_3__ {unsigned char* rk; int nr; } ;
typedef  TYPE_1__ mbedtls_camellia_context ;
typedef  int /*<<< orphan*/  KC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char,unsigned char*,size_t) ; 
 int MBEDTLS_ERR_CAMELLIA_INVALID_KEY_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 unsigned char** SIGMA_CHARS ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int** transposes ; 

int FUNC4( mbedtls_camellia_context *ctx, const unsigned char *key,
                         unsigned int keybits )
{
    int idx;
    size_t i;
    uint32_t *RK;
    unsigned char t[64];
    uint32_t SIGMA[6][2];
    uint32_t KC[16];
    uint32_t TK[20];

    RK = ctx->rk;

    FUNC3( t, 0, 64 );
    FUNC3( RK, 0, sizeof(ctx->rk) );

    switch( keybits )
    {
        case 128: ctx->nr = 3; idx = 0; break;
        case 192:
        case 256: ctx->nr = 4; idx = 1; break;
        default : return( MBEDTLS_ERR_CAMELLIA_INVALID_KEY_LENGTH );
    }

    for( i = 0; i < keybits / 8; ++i )
        t[i] = key[i];

    if( keybits == 192 ) {
        for( i = 0; i < 8; i++ )
            t[24 + i] = ~t[16 + i];
    }

    /*
     * Prepare SIGMA values
     */
    for( i = 0; i < 6; i++ ) {
        FUNC0( SIGMA[i][0], SIGMA_CHARS[i], 0 );
        FUNC0( SIGMA[i][1], SIGMA_CHARS[i], 4 );
    }

    /*
     * Key storage in KC
     * Order: KL, KR, KA, KB
     */
    FUNC3( KC, 0, sizeof(KC) );

    /* Store KL, KR */
    for( i = 0; i < 8; i++ )
        FUNC0( KC[i], t, i * 4 );

    /* Generate KA */
    for( i = 0; i < 4; ++i )
        KC[8 + i] = KC[i] ^ KC[4 + i];

    FUNC2( KC + 8, SIGMA[0], KC + 10 );
    FUNC2( KC + 10, SIGMA[1], KC + 8 );

    for( i = 0; i < 4; ++i )
        KC[8 + i] ^= KC[i];

    FUNC2( KC + 8, SIGMA[2], KC + 10 );
    FUNC2( KC + 10, SIGMA[3], KC + 8 );

    if( keybits > 128 ) {
        /* Generate KB */
        for( i = 0; i < 4; ++i )
            KC[12 + i] = KC[4 + i] ^ KC[8 + i];

        FUNC2( KC + 12, SIGMA[4], KC + 14 );
        FUNC2( KC + 14, SIGMA[5], KC + 12 );
    }

    /*
     * Generating subkeys
     */

    /* Manipulating KL */
    FUNC1( idx, 0 );

    /* Manipulating KR */
    if( keybits > 128 ) {
        FUNC1( idx, 1 );
    }

    /* Manipulating KA */
    FUNC1( idx, 2 );

    /* Manipulating KB */
    if( keybits > 128 ) {
        FUNC1( idx, 3 );
    }

    /* Do transpositions */
    for( i = 0; i < 20; i++ ) {
        if( transposes[idx][i] != -1 ) {
            RK[32 + 12 * idx + i] = RK[transposes[idx][i]];
        }
    }

    return( 0 );
}