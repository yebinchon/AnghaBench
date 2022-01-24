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
typedef  int /*<<< orphan*/  esp_efuse_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC1(esp_efuse_block_t blk, int offset_in_bits, int size_bits)
{
    int max_num_bit = offset_in_bits + size_bits;
    if (max_num_bit > 256) {
        return false;
    } else {
        FUNC0(blk, max_num_bit);
    }
    return true;
}