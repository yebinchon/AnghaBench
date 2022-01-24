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
typedef  int u8_t ;
typedef  int u32_t ;
typedef  int /*<<< orphan*/  u16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int*) ; 

__attribute__((used)) static void FUNC2(u8_t nonce[13], bool dev_key, u8_t aszmic,
                             u16_t src, u16_t dst, u32_t seq_num,
                             u32_t iv_index)
{
    if (dev_key) {
        nonce[0] = 0x02;
    } else {
        nonce[0] = 0x01;
    }

    FUNC1((seq_num | ((u32_t)aszmic << 31)), &nonce[1]);

    FUNC0(src, &nonce[5]);
    FUNC0(dst, &nonce[7]);

    FUNC1(iv_index, &nonce[9]);
}