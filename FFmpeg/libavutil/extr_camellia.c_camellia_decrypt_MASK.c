#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {int key_bits; int /*<<< orphan*/ * Kw; int /*<<< orphan*/ * K; int /*<<< orphan*/ * Ke; } ;
typedef  TYPE_1__ AVCAMELLIA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC6(AVCAMELLIA *cs, uint8_t *dst, const uint8_t *src, uint8_t *iv)
{
    uint64_t D1, D2;
    D1 = FUNC0(src);
    D2 = FUNC0(src + 8);
    D1 ^= cs->Kw[2];
    D2 ^= cs->Kw[3];
    if (cs->key_bits != 128) {
        D2 ^= FUNC2(D1, cs->K[23]);
        D1 ^= FUNC2(D2, cs->K[22]);
        D2 ^= FUNC2(D1, cs->K[21]);
        D1 ^= FUNC2(D2, cs->K[20]);
        D2 ^= FUNC2(D1, cs->K[19]);
        D1 ^= FUNC2(D2, cs->K[18]);
        D1 = FUNC3(D1, cs->Ke[5]);
        D2 = FUNC4(D2, cs->Ke[4]);
    }
    D2 ^= FUNC2(D1, cs->K[17]);
    D1 ^= FUNC2(D2, cs->K[16]);
    D2 ^= FUNC2(D1, cs->K[15]);
    D1 ^= FUNC2(D2, cs->K[14]);
    D2 ^= FUNC2(D1, cs->K[13]);
    D1 ^= FUNC2(D2, cs->K[12]);
    D1 = FUNC3(D1, cs->Ke[3]);
    D2 = FUNC4(D2, cs->Ke[2]);
    D2 ^= FUNC2(D1, cs->K[11]);
    D1 ^= FUNC2(D2, cs->K[10]);
    D2 ^= FUNC2(D1, cs->K[9]);
    D1 ^= FUNC2(D2, cs->K[8]);
    D2 ^= FUNC2(D1, cs->K[7]);
    D1 ^= FUNC2(D2, cs->K[6]);
    D1 = FUNC3(D1, cs->Ke[1]);
    D2 = FUNC4(D2, cs->Ke[0]);
    D2 ^= FUNC2(D1, cs->K[5]);
    D1 ^= FUNC2(D2, cs->K[4]);
    D2 ^= FUNC2(D1, cs->K[3]);
    D1 ^= FUNC2(D2, cs->K[2]);
    D2 ^= FUNC2(D1, cs->K[1]);
    D1 ^= FUNC2(D2, cs->K[0]);
    D2 ^= cs->Kw[0];
    D1 ^= cs->Kw[1];
    if (iv) {
        D2 ^= FUNC0(iv);
        D1 ^= FUNC0(iv + 8);
        FUNC5(iv, src, 16);
    }
    FUNC1(dst, D2);
    FUNC1(dst + 8, D1);
}