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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(void)
{
    uint8_t flash_crypt_cnt_wr_dis = 0;
    FUNC0(ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT, &flash_crypt_cnt_wr_dis, 1);
    if (!flash_crypt_cnt_wr_dis) {
        FUNC1(ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT, 1);
    }
}