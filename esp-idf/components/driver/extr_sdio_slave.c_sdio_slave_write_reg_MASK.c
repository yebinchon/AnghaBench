#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_2__ {int /*<<< orphan*/  reg_spinlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__ context ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

esp_err_t FUNC4(int pos, uint8_t reg)
{
    if (pos >= 28 && pos <= 31) {
        FUNC1("interrupt reg, please use sdio_slave_clear_int");
        return ESP_ERR_INVALID_ARG;
    }
    if (pos < 0 || pos >= 64) {
        FUNC1("write register address wrong");
        return ESP_ERR_INVALID_ARG;
    }
    uint32_t addr = FUNC0(pos) & (~3);
    uint32_t shift = (pos % 4)*8;

    FUNC2(&context.reg_spinlock);
    int val = *(uint32_t*)addr;
    *(uint32_t*)addr = (val & ~(0xff << shift)) | (reg<<shift);
    FUNC3(&context.reg_spinlock);
    return ESP_OK;
}