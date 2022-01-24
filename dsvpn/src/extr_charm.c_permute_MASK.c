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
typedef  int uint32_t ;

/* Variables and functions */
 int* RK ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int) ; 
 int XOODOO_ROUNDS ; 

__attribute__((used)) static void FUNC2(uint32_t st[12])
{
    uint32_t e[4], a, b, c, t, r, i;

    for (r = 0; r < XOODOO_ROUNDS; r++) {
        for (i = 0; i < 4; i++) {
            e[i] = FUNC0(st[i] ^ st[i + 4] ^ st[i + 8], 18);
            e[i] ^= FUNC0(e[i], 9);
        }
        for (i = 0; i < 12; i++) {
            st[i] ^= e[(i - 1) & 3];
        }
        FUNC1(st, 7, 4);
        FUNC1(st, 7, 5);
        FUNC1(st, 7, 6);
        st[0] ^= RK[r];
        for (i = 0; i < 4; i++) {
            a         = st[i];
            b         = st[i + 4];
            c         = FUNC0(st[i + 8], 21);
            st[i + 8] = FUNC0((b & ~a) ^ c, 24);
            st[i + 4] = FUNC0((a & ~c) ^ b, 31);
            st[i] ^= c & ~b;
        }
        FUNC1(st, 8, 10);
        FUNC1(st, 9, 11);
    }
}