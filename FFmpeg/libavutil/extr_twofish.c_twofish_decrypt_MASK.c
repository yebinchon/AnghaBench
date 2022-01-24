#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int uint32_t ;
struct TYPE_4__ {int* K; } ;
typedef  TYPE_1__ AVTWOFISH ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC6(AVTWOFISH *cs, uint8_t *dst, const uint8_t *src, uint8_t *iv)
{
    uint32_t P[4], t0, t1;
    int i;
    P[2] = FUNC0(src) ^ cs->K[4];
    P[3] = FUNC0(src + 4) ^ cs->K[5];
    P[0] = FUNC0(src + 8) ^ cs->K[6];
    P[1] = FUNC0(src + 12) ^ cs->K[7];
    for (i = 15; i >= 0; i -= 2) {
        t0 = FUNC3(cs, P[2]);
        t1 = FUNC3(cs, FUNC2(P[3], 8));
        P[0] = FUNC2(P[0], 1) ^ (t0 + t1 + cs->K[2 * i + 8]);
        P[1] = FUNC4(P[1] ^ (t0 + 2 * t1 + cs->K[2 * i + 9]), 1);
        t0 = FUNC3(cs, P[0]);
        t1 = FUNC3(cs, FUNC2(P[1], 8));
        P[2] = FUNC2(P[2], 1) ^ (t0 + t1 + cs->K[2 * i + 6]);
        P[3] = FUNC4(P[3] ^ (t0 + 2 * t1 + cs->K[2 * i + 7]), 1);
    }
    P[0] ^= cs->K[0];
    P[1] ^= cs->K[1];
    P[2] ^= cs->K[2];
    P[3] ^= cs->K[3];
    if (iv) {
        P[0] ^= FUNC0(iv);
        P[1] ^= FUNC0(iv + 4);
        P[2] ^= FUNC0(iv + 8);
        P[3] ^= FUNC0(iv + 12);
        FUNC5(iv, src, 16);
    }
    FUNC1(dst, P[2]);
    FUNC1(dst + 4, P[3]);
    FUNC1(dst + 8, P[0]);
    FUNC1(dst + 12, P[1]);
}