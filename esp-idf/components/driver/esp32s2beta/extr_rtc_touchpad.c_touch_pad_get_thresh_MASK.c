#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int touch_pad_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_4__ {TYPE_1__* touch_thresh; } ;
struct TYPE_3__ {int /*<<< orphan*/  thresh; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_2__ SENS ; 

esp_err_t FUNC0(touch_pad_t touch_num, uint32_t *threshold)
{
    if (threshold) {
        *threshold = SENS.touch_thresh[touch_num - 1].thresh;
    }
    return ESP_OK;
}