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
typedef  int /*<<< orphan*/  mbedtls_aes_context ;

/* Variables and functions */
 int /*<<< orphan*/  MBEDTLS_AES_DECRYPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,unsigned char*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned int,unsigned char*,unsigned char const*,size_t) ; 

__attribute__((used)) static void FUNC6( unsigned char aes_iv[16], unsigned int keylen,
                               unsigned char *buf, size_t buflen,
                               const unsigned char *pwd, size_t pwdlen )
{
    mbedtls_aes_context aes_ctx;
    unsigned char aes_key[32];

    FUNC2( &aes_ctx );

    FUNC5( aes_key, keylen, aes_iv, pwd, pwdlen );

    FUNC3( &aes_ctx, aes_key, keylen * 8 );
    FUNC0( &aes_ctx, MBEDTLS_AES_DECRYPT, buflen,
                     aes_iv, buf, buf );

    FUNC1( &aes_ctx );
    FUNC4( aes_key, keylen );
}