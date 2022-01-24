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
 int /*<<< orphan*/  MBEDTLS_CIPHER_ID_CAMELLIA ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char const*,unsigned int) ; 

__attribute__((used)) static int FUNC1( void *ctx, const unsigned char *key,
                                     unsigned int key_bitlen )
{
    return FUNC0( (mbedtls_gcm_context *) ctx, MBEDTLS_CIPHER_ID_CAMELLIA,
                     key, key_bitlen );
}