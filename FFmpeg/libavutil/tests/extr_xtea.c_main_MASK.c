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
typedef  char const uint8_t ;
typedef  int /*<<< orphan*/  AVXTEA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int XTEA_NUM_TESTS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,char const*,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,char const*,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,char const*,char const*,int,char const*,int,char*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,char const*,char const*,int,char const*,int /*<<< orphan*/ )) ; 
 char const** xtea_test_ct ; 
 char const** xtea_test_key ; 
 char const** xtea_test_pt ; 

int FUNC11(void)
{
    uint8_t buf[16], iv[8];
    int i, j;
    static const uint8_t src[32] = "HelloWorldHelloWorldHelloWorld";
    uint8_t ct[32];
    uint8_t pl[32];
    AVXTEA *ctx = FUNC3();
    if (!ctx)
        return 1;

    for (i = 0; i < XTEA_NUM_TESTS; i++) {
        FUNC5(ctx, xtea_test_key[i]);

        FUNC10(ctx, buf, xtea_test_pt[i], xtea_test_ct[i], 1, NULL, 0, "encryption", av_xtea_crypt);
        FUNC10(ctx, buf, xtea_test_ct[i], xtea_test_pt[i], 1, NULL, 1, "decryption", av_xtea_crypt);

        for (j = 0; j < 4; j++)
            FUNC1(&buf[4*j], FUNC0(&xtea_test_key[i][4*j]));
        FUNC7(ctx, buf);
        for (j = 0; j < 2; j++) {
            FUNC1(&ct[4*j], FUNC0(&xtea_test_ct[i][4*j]));
            FUNC1(&pl[4*j], FUNC0(&xtea_test_pt[i][4*j]));
        }
        FUNC10(ctx, buf, pl, ct, 1, NULL, 0, "encryption", av_xtea_le_crypt);
        FUNC10(ctx, buf, ct, pl, 1, NULL, 1, "decryption", av_xtea_le_crypt);

        /* encrypt */
        FUNC8(iv, "HALLO123", 8);
        FUNC4(ctx, ct, src, 4, iv, 0);

        /* decrypt into pl */
        FUNC8(iv, "HALLO123", 8);
        FUNC10(ctx, pl, ct, src, 4, iv, 1, "CBC decryption", av_xtea_crypt);

        FUNC8(iv, "HALLO123", 8);
        FUNC10(ctx, ct, ct, src, 4, iv, 1, "CBC inplace decryption", av_xtea_crypt);
    }

    FUNC9("Test encryption/decryption success.\n");
    FUNC2(ctx);

    return 0;
}