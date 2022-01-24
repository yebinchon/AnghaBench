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
typedef  int /*<<< orphan*/  esp_aes_context ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_AES_ENCRYPT ; 
 int MBEDTLS_ERR_AES_BAD_INPUT_DATA ; 
 int MBEDTLS_ERR_AES_INVALID_KEY_LENGTH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5( esp_aes_context *ctx,
                           size_t length,
                           size_t *iv_off,
                           unsigned char iv[16],
                           const unsigned char *input,
                           unsigned char *output )
{
    int ret = 0;
    size_t n;

    if ( ctx == NULL || iv_off == NULL || iv == NULL ||
        input == NULL || output == NULL ) {
            return MBEDTLS_ERR_AES_BAD_INPUT_DATA;
    }

    n = *iv_off;

    if( n > 15 ) {
        return( MBEDTLS_ERR_AES_BAD_INPUT_DATA );
    }

    if (!FUNC4(ctx)) {
        return MBEDTLS_ERR_AES_INVALID_KEY_LENGTH;
    }

    FUNC0();

    FUNC3(ctx, ESP_AES_ENCRYPT);

    while( length-- ) {
        if( n == 0 ) {
            FUNC1(ctx, iv, iv);
        }
        *output++ =  *input++ ^ iv[n];

        n = ( n + 1 ) & 0x0F;
    }

    *iv_off = n;

    FUNC2();

    return( ret );
}