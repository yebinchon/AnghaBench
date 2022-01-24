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
typedef  int /*<<< orphan*/  mbedtls_gcm_context ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,unsigned char const*,size_t,unsigned char const*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,size_t,unsigned char const*,unsigned char*) ; 

int FUNC3( mbedtls_gcm_context *ctx,
                       int mode,
                       size_t length,
                       const unsigned char *iv,
                       size_t iv_len,
                       const unsigned char *add,
                       size_t add_len,
                       const unsigned char *input,
                       unsigned char *output,
                       size_t tag_len,
                       unsigned char *tag )
{
    int ret;

    if( ( ret = FUNC1( ctx, mode, iv, iv_len, add, add_len ) ) != 0 )
        return( ret );

    if( ( ret = FUNC2( ctx, length, input, output ) ) != 0 )
        return( ret );

    if( ( ret = FUNC0( ctx, tag, tag_len ) ) != 0 )
        return( ret );

    return( 0 );
}