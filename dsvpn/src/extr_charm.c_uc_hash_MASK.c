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
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (int*,unsigned char const*) ; 

void FUNC6(uint32_t st[12], unsigned char h[32], const unsigned char *msg, size_t len)
{
    unsigned char padded[16 + 1];
    size_t        off = 0;
    size_t        leftover;

    if (len > 16) {
        for (; off < len - 16; off += 16) {
            FUNC0(st);
            FUNC5(st, &msg[off]);
            FUNC0(st);
            FUNC3(st);
        }
    }
    leftover = len - off;
    FUNC2(padded, 0, 16);
    FUNC1(padded, &msg[off], leftover);
    padded[leftover] = 0x80;
    FUNC0(st);
    FUNC5(st, padded);
    FUNC0(st);
    st[11] ^= (1UL << 24 | (uint32_t) leftover >> 4 << 25);
    FUNC3(st);
    FUNC4(st, &h[0]);
    FUNC4(st, &h[16]);
}