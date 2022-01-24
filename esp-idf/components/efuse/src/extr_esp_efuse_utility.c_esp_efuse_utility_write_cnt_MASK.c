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
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int /*<<< orphan*/  esp_efuse_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  ESP_OK_EFUSE_CNT ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int,int,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,int) ; 

esp_err_t FUNC4(unsigned int num_reg, esp_efuse_block_t efuse_block, int bit_start, int bit_count, void* cnt, int* bits_counter)
{
    esp_err_t err = ESP_OK;
    uint32_t reg = FUNC0(efuse_block, num_reg);
    size_t* set_bits = (size_t*)cnt;
    uint32_t mask = FUNC1(bit_count, bit_start);
    uint32_t reg_masked_bits = reg & mask;
    if ((reg_masked_bits ^ mask) != 0) {// register has free bits to set them to 1?
        uint32_t reg_to_write = FUNC2(bit_start, bit_count, reg_masked_bits, set_bits);
        FUNC3(efuse_block, num_reg, reg_to_write);
    }
    *bits_counter += bit_count;
    if ((*set_bits) == 0) {
        err = ESP_OK_EFUSE_CNT;
    }
    return err;
}