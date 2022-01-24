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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {TYPE_1__* (* get_address ) () ;} ;
struct TYPE_3__ {int /*<<< orphan*/  const* address; } ;

/* Variables and functions */
 scalar_t__ ESP_BLUEDROID_STATUS_ENABLED ; 
 TYPE_2__* FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 

const uint8_t *FUNC3(void)
{
    if (FUNC1() != ESP_BLUEDROID_STATUS_ENABLED) {
	return NULL;
    }
    return FUNC0()->get_address()->address;
}