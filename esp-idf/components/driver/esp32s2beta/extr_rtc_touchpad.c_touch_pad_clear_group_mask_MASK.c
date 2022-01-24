#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_6__ {int touch_scan_pad_map; } ;
struct TYPE_8__ {TYPE_2__ touch_scan_ctrl; } ;
struct TYPE_5__ {int touch_outen; } ;
struct TYPE_7__ {TYPE_1__ sar_touch_conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_4__ RTCCNTL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_3__ SENS ; 
 int TOUCH_PAD_BIT_MASK_MAX ; 

esp_err_t FUNC2(uint16_t enable_mask)
{
    FUNC0();
    SENS.sar_touch_conf.touch_outen &= ~(enable_mask & TOUCH_PAD_BIT_MASK_MAX);
    RTCCNTL.touch_scan_ctrl.touch_scan_pad_map  &= ~(enable_mask & TOUCH_PAD_BIT_MASK_MAX);
    FUNC1();
    return ESP_OK;
}