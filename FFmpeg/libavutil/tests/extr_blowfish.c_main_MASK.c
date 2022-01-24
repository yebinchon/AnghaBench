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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  AVBlowfish ;

/* Variables and functions */
 scalar_t__* IV ; 
 int NUM_VARIABLE_KEY_TESTS ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__* ciphertext ; 
 scalar_t__* ciphertext2 ; 
 scalar_t__* ciphertext_l ; 
 scalar_t__* ciphertext_r ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*,int) ; 
 scalar_t__* plaintext ; 
 scalar_t__* plaintext2 ; 
 scalar_t__* plaintext_l ; 
 scalar_t__* plaintext_r ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,scalar_t__*,int,scalar_t__*,int,char*) ; 
 char** variable_key ; 

int FUNC7(void)
{
    uint32_t tmptext_l[NUM_VARIABLE_KEY_TESTS];
    uint32_t tmptext_r[NUM_VARIABLE_KEY_TESTS];
    uint8_t tmp[16], iv[8];
    int i;
    AVBlowfish *ctx = FUNC0();
    if (!ctx)
        return 1;

    FUNC2(ctx, "abcdefghijklmnopqrstuvwxyz", 26);

    FUNC6(ctx, tmp, plaintext, ciphertext, 1, NULL, 0, "encryption");
    FUNC6(ctx, tmp, ciphertext, plaintext, 1, NULL, 1, "decryption");
    FUNC6(ctx, tmp, tmp, ciphertext, 1, NULL, 0, "Inplace encryption");
    FUNC6(ctx, tmp, tmp, plaintext,  1, NULL, 1, "Inplace decryption");
    FUNC4(iv, IV, 8);
    FUNC6(ctx, tmp, plaintext2, ciphertext2, 2, iv, 0, "CBC encryption");
    FUNC4(iv, IV, 8);
    FUNC6(ctx, tmp, ciphertext2, plaintext2, 2, iv, 1, "CBC decryption");
    FUNC4(iv, IV, 8);
    FUNC6(ctx, tmp, tmp, ciphertext2, 2, iv, 0, "Inplace CBC encryption");
    FUNC4(iv, IV, 8);
    FUNC6(ctx, tmp, tmp, plaintext2,  2, iv, 1, "Inplace CBC decryption");

    FUNC4(tmptext_l, plaintext_l, sizeof(*plaintext_l) * NUM_VARIABLE_KEY_TESTS);
    FUNC4(tmptext_r, plaintext_r, sizeof(*plaintext_r) * NUM_VARIABLE_KEY_TESTS);

    for (i = 0; i < NUM_VARIABLE_KEY_TESTS; i++) {
        FUNC2(ctx, variable_key[i], 8);

        FUNC1(ctx, &tmptext_l[i], &tmptext_r[i], 0);
        if (tmptext_l[i] != ciphertext_l[i] || tmptext_r[i] != ciphertext_r[i]) {
            FUNC5("Test encryption failed.\n");
            return 2;
        }

        FUNC1(ctx, &tmptext_l[i], &tmptext_r[i], 1);
        if (tmptext_l[i] != plaintext_l[i] || tmptext_r[i] != plaintext_r[i]) {
            FUNC5("Test decryption failed.\n");
            return 3;
        }
    }
    FUNC5("Test encryption/decryption success.\n");
    FUNC3(ctx);

    return 0;
}