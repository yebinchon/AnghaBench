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
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int const) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC12 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC13 (int*,int*,int) ; 

__attribute__((used)) static void FUNC14(int32_t *output, const int32_t *input)
{
    int buf_a[64], buf_b[64];
    int i, k, mag, shift, round;

    mag = 0;
    for (i = 0; i < 64; i++)
        mag += FUNC0(input[i]);

    shift = mag > 0x400000 ? 2 : 0;
    round = shift > 0 ? 1 << (shift - 1) : 0;

    for (i = 0; i < 64; i++)
        buf_a[i] = (input[i] + round) >> shift;

    FUNC10(buf_a, buf_b +  0, 32);
    FUNC11(buf_a, buf_b + 32, 32);
    FUNC2(buf_b, 64);

    FUNC10(buf_b +  0, buf_a +  0, 16);
    FUNC11(buf_b +  0, buf_a + 16, 16);
    FUNC12(buf_b + 32, buf_a + 32, 16);
    FUNC13(buf_b + 32, buf_a + 48, 16);
    FUNC2(buf_a, 64);

    FUNC10(buf_a +  0, buf_b +  0, 8);
    FUNC11(buf_a +  0, buf_b +  8, 8);
    FUNC12(buf_a + 16, buf_b + 16, 8);
    FUNC13(buf_a + 16, buf_b + 24, 8);
    FUNC12(buf_a + 32, buf_b + 32, 8);
    FUNC13(buf_a + 32, buf_b + 40, 8);
    FUNC12(buf_a + 48, buf_b + 48, 8);
    FUNC13(buf_a + 48, buf_b + 56, 8);
    FUNC2(buf_b, 64);

    FUNC3(buf_b +  0, buf_a +  0);
    FUNC4(buf_b +  8, buf_a +  8);
    FUNC4(buf_b + 16, buf_a + 16);
    FUNC4(buf_b + 24, buf_a + 24);
    FUNC4(buf_b + 32, buf_a + 32);
    FUNC4(buf_b + 40, buf_a + 40);
    FUNC4(buf_b + 48, buf_a + 48);
    FUNC4(buf_b + 56, buf_a + 56);
    FUNC2(buf_a, 64);

    FUNC8(buf_a +  0, buf_b +  0);
    FUNC9(buf_a + 16, buf_b + 16);
    FUNC9(buf_a + 32, buf_b + 32);
    FUNC9(buf_a + 48, buf_b + 48);
    FUNC2(buf_b, 64);

    FUNC5(buf_b +  0, buf_a +  0);
    FUNC6(buf_b + 32, buf_a + 32);
    FUNC2(buf_a, 64);

    FUNC7(buf_a, buf_b);

    for (i = 0; i < 64; i++)
        buf_b[i] = FUNC1(buf_b[i] * (1 << shift));

    for (i = 0, k = 63; i < 32; i++, k--) {
        output[     i] = FUNC1(buf_b[i] - buf_b[k]);
        output[32 + i] = FUNC1(buf_b[i] + buf_b[k]);
    }
}