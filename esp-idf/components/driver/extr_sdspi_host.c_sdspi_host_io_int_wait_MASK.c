#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  gpio_int; int /*<<< orphan*/  semphr_int; } ;
typedef  TYPE_1__ slot_info_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int /*<<< orphan*/  TickType_t ;
typedef  scalar_t__ BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_TIMEOUT ; 
 int /*<<< orphan*/  ESP_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ pdFALSE ; 
 TYPE_1__* s_slots ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

esp_err_t FUNC4(int slot, TickType_t timeout_ticks)
{
    slot_info_t* pslot = &s_slots[slot];
    //skip the interrupt and semaphore if the gpio is already low.
    if (FUNC0(pslot->gpio_int)==0) return ESP_OK;

    //clear the semaphore before wait
    FUNC3(pslot->semphr_int, 0);
    //enable the interrupt and wait for the semaphore
    FUNC2(pslot->gpio_int);
    BaseType_t ret = FUNC3(pslot->semphr_int, timeout_ticks);
    if (ret == pdFALSE) {
        FUNC1(pslot->gpio_int);
        return ESP_ERR_TIMEOUT;
    }
    return ESP_OK;
}