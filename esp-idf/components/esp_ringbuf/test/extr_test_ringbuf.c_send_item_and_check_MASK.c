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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  TickType_t ;
typedef  int /*<<< orphan*/  RingbufHandle_t ;
typedef  scalar_t__ BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ pdTRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(RingbufHandle_t handle, const uint8_t *item,  size_t item_size, TickType_t ticks_to_wait, bool in_isr)
{
    BaseType_t ret;
    if (in_isr) {
        ret = FUNC2(handle, (void *)item, item_size, NULL);
    } else {
        ret = FUNC1(handle, (void *)item, item_size, ticks_to_wait);
    }
    FUNC0(ret == pdTRUE, "Failed to send item");
}