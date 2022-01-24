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
typedef  int /*<<< orphan*/  mbedtls_cipher_context_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char const*,size_t,unsigned char*,size_t*) ; 

int FUNC4( mbedtls_cipher_context_t *ctx,
                  const unsigned char *iv, size_t iv_len,
                  const unsigned char *input, size_t ilen,
                  unsigned char *output, size_t *olen )
{
    int ret;
    size_t finish_olen;

    if( ( ret = FUNC2( ctx, iv, iv_len ) ) != 0 )
        return( ret );

    if( ( ret = FUNC1( ctx ) ) != 0 )
        return( ret );

    if( ( ret = FUNC3( ctx, input, ilen, output, olen ) ) != 0 )
        return( ret );

    if( ( ret = FUNC0( ctx, output + *olen, &finish_olen ) ) != 0 )
        return( ret );

    *olen += finish_olen;

    return( 0 );
}