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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  sdmmc_card_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_SIZE ; 
 int SD_ARG_CMD53_BLOCK_MODE ; 
 int SD_ARG_CMD53_INCREMENT ; 
 int SD_ARG_CMD53_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*,size_t) ; 

esp_err_t FUNC1(sdmmc_card_t* card, uint32_t function,
        uint32_t addr, void* dst, size_t size)
{
    if (size % 4 != 0) {
        return ESP_ERR_INVALID_SIZE;
    }
    return FUNC0(card, function, addr,
            SD_ARG_CMD53_READ | SD_ARG_CMD53_INCREMENT | SD_ARG_CMD53_BLOCK_MODE,
            dst, size);
}