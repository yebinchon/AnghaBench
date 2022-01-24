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
struct TYPE_3__ {int /*<<< orphan*/  crypt; int /*<<< orphan*/  tweak; } ;
typedef  TYPE_1__ esp_aes_xts_context ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char const*,unsigned int) ; 
 int FUNC1 (unsigned char const*,unsigned int,unsigned char const**,unsigned int*,unsigned char const**,unsigned int*) ; 

int FUNC2( esp_aes_xts_context *ctx,
                                const unsigned char *key,
                                unsigned int keybits)
{
    int ret;
    const unsigned char *key1, *key2;
    unsigned int key1bits, key2bits;

    ret = FUNC1( key, keybits, &key1, &key1bits,
                                       &key2, &key2bits );
    if( ret != 0 )
        return( ret );

    /* Set the tweak key. Always set tweak key for the encryption mode. */
    ret = FUNC0( &ctx->tweak, key2, key2bits );
    if( ret != 0 )
        return( ret );

    /* Set crypt key for encryption. */
    return FUNC0( &ctx->crypt, key1, key1bits );
}