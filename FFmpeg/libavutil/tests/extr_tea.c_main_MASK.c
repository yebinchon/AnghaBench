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
struct AVTEA {int dummy; } ;

/* Variables and functions */
 int TEA_NUM_TESTS ; 
 int /*<<< orphan*/  FUNC0 (struct AVTEA*) ; 
 struct AVTEA* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct AVTEA*,char const*,char const*,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct AVTEA*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char const** tea_test_ct ; 
 int /*<<< orphan*/ * tea_test_key ; 
 char const** tea_test_pt ; 
 int /*<<< orphan*/  FUNC6 (struct AVTEA*,char const*,char const*,char const*,int,char const*,int,char*) ; 

int FUNC7(void)
{
    struct AVTEA *ctx;
    uint8_t buf[8], iv[8];
    int i;
    static const uint8_t src[32] = "HelloWorldHelloWorldHelloWorld";
    uint8_t ct[32];
    uint8_t pl[32];

    ctx = FUNC1();
    if (!ctx)
        return 1;

    for (i = 0; i < TEA_NUM_TESTS; i++) {
        FUNC3(ctx, tea_test_key[i], 64);

        FUNC6(ctx, buf, tea_test_pt[i], tea_test_ct[i], 1, NULL, 0, "encryption");
        FUNC6(ctx, buf, tea_test_ct[i], tea_test_pt[i], 1, NULL, 1, "decryption");

        /* encrypt */
        FUNC4(iv, "HALLO123", 8);
        FUNC2(ctx, ct, src, 4, iv, 0);

        /* decrypt into pl */
        FUNC4(iv, "HALLO123", 8);
        FUNC6(ctx, pl, ct, src, 4, iv, 1, "CBC decryption");

        FUNC4(iv, "HALLO123", 8);
        FUNC6(ctx, ct, ct, src, 4, iv, 1, "CBC inplace decryption");
    }

    FUNC5("Test encryption/decryption success.\n");
    FUNC0(ctx);

    return 0;
}