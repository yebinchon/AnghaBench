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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static uint32_t FUNC3(uint32_t k0, uint32_t k1)
{
    uint8_t s[4], m[8];
    FUNC1(m, k0);
    FUNC1(m + 4, k1);
    s[0] = FUNC2(0x01, m[0]) ^ FUNC2(0xa4, m[1]) ^ FUNC2(0x55, m[2]) ^ FUNC2(0x87, m[3]) ^ FUNC2(0x5a, m[4]) ^ FUNC2(0x58, m[5]) ^ FUNC2(0xdb, m[6]) ^ FUNC2(0x9e, m[7]);
    s[1] = FUNC2(0xa4, m[0]) ^ FUNC2(0x56, m[1]) ^ FUNC2(0x82, m[2]) ^ FUNC2(0xf3, m[3]) ^ FUNC2(0x1e, m[4]) ^ FUNC2(0xc6, m[5]) ^ FUNC2(0x68, m[6]) ^ FUNC2(0xe5, m[7]);
    s[2] = FUNC2(0x02, m[0]) ^ FUNC2(0xa1, m[1]) ^ FUNC2(0xfc, m[2]) ^ FUNC2(0xc1, m[3]) ^ FUNC2(0x47, m[4]) ^ FUNC2(0xae, m[5]) ^ FUNC2(0x3d, m[6]) ^ FUNC2(0x19, m[7]);
    s[3] = FUNC2(0xa4, m[0]) ^ FUNC2(0x55, m[1]) ^ FUNC2(0x87, m[2]) ^ FUNC2(0x5a, m[3]) ^ FUNC2(0x58, m[4]) ^ FUNC2(0xdb, m[5]) ^ FUNC2(0x9e, m[6]) ^ FUNC2(0x03, m[7]);
    return FUNC0(s);
}