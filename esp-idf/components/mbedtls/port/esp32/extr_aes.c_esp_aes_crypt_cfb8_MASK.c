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
struct TYPE_6__ {scalar_t__ key_in_hardware; } ;
typedef  TYPE_1__ esp_aes_context ;

/* Variables and functions */
 int ESP_AES_DECRYPT ; 
 int ESP_AES_ENCRYPT ; 
 int MBEDTLS_ERR_AES_INVALID_KEY_LENGTH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int FUNC6( esp_aes_context *ctx,
                        int mode,
                        size_t length,
                        unsigned char iv[16],
                        const unsigned char *input,
                        unsigned char *output )
{
    unsigned char c;
    unsigned char ov[17];

    if (!FUNC5(ctx)) {
        return MBEDTLS_ERR_AES_INVALID_KEY_LENGTH;
    }

    FUNC0();
    ctx->key_in_hardware = 0;

    FUNC3(ctx, ESP_AES_ENCRYPT);

    while ( length-- ) {
        FUNC4( ov, iv, 16 );
        FUNC1(ctx, iv, iv);

        if ( mode == ESP_AES_DECRYPT ) {
            ov[16] = *input;
        }

        c = *output++ = (unsigned char)( iv[0] ^ *input++ );

        if ( mode == ESP_AES_ENCRYPT ) {
            ov[16] = c;
        }

        FUNC4( iv, ov + 1, 16 );
    }

    FUNC2();

    return 0;
}