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
 int MBEDTLS_ERR_GCM_AUTH_FAILED ; 
 int /*<<< orphan*/  MBEDTLS_GCM_DECRYPT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,unsigned char const*,size_t,unsigned char const*,size_t,unsigned char const*,unsigned char*,size_t,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,size_t) ; 

int FUNC2( mbedtls_gcm_context *ctx,
                      size_t length,
                      const unsigned char *iv,
                      size_t iv_len,
                      const unsigned char *add,
                      size_t add_len,
                      const unsigned char *tag,
                      size_t tag_len,
                      const unsigned char *input,
                      unsigned char *output )
{
    int ret;
    unsigned char check_tag[16];
    size_t i;
    int diff;

    if( ( ret = FUNC0( ctx, MBEDTLS_GCM_DECRYPT, length,
                                   iv, iv_len, add, add_len,
                                   input, output, tag_len, check_tag ) ) != 0 )
    {
        return( ret );
    }

    /* Check tag in "constant-time" */
    for( diff = 0, i = 0; i < tag_len; i++ )
        diff |= tag[i] ^ check_tag[i];

    if( diff != 0 )
    {
        FUNC1( output, length );
        return( MBEDTLS_ERR_GCM_AUTH_FAILED );
    }

    return( 0 );
}