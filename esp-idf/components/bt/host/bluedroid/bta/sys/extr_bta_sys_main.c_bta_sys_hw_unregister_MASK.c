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
typedef  size_t tBTA_SYS_HW_MODULE ;
struct TYPE_2__ {int /*<<< orphan*/ ** sys_hw_cback; } ;

/* Variables and functions */
 TYPE_1__ bta_sys_cb ; 

void FUNC0( tBTA_SYS_HW_MODULE module )
{
    bta_sys_cb.sys_hw_cback[module] = NULL;
}