#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  mask; void* handler_arg; int /*<<< orphan*/  handler; } ;
typedef  TYPE_1__ rtc_isr_handler_t ;
typedef  int /*<<< orphan*/  intr_handler_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_NO_MEM ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  s_rtc_isr_handler_list ; 
 int /*<<< orphan*/  s_rtc_isr_handler_list_lock ; 

esp_err_t FUNC5(intr_handler_t handler, void* handler_arg, uint32_t rtc_intr_mask)
{
    esp_err_t err = FUNC4();
    if (err != ESP_OK) {
        return err;
    }

    rtc_isr_handler_t* item = FUNC1(sizeof(*item));
    if (item == NULL) {
        return ESP_ERR_NO_MEM;
    }
    item->handler = handler;
    item->handler_arg = handler_arg;
    item->mask = rtc_intr_mask;
    FUNC2(&s_rtc_isr_handler_list_lock);
    FUNC0(&s_rtc_isr_handler_list, item, next);
    FUNC3(&s_rtc_isr_handler_list_lock);
    return ESP_OK;
}