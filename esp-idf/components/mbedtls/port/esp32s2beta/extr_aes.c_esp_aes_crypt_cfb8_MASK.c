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
 int ESP_AES_DECRYPT ; 
 int ESP_AES_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,int) ; 

int FUNC5( esp_aes_context *ctx,
                        int mode,
                        size_t length,
                        unsigned char iv[16],
                        const unsigned char *input,
                        unsigned char *output )
{
    unsigned char c;
    unsigned char ov[17];

    FUNC0();

    FUNC3(ctx, ESP_AES_ENCRYPT);

    while ( length-- ) {
        FUNC4( ov, iv, 16 );
        FUNC1(iv, iv);

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