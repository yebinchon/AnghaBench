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
struct TYPE_4__ {struct TYPE_4__* valid_sw_formats; struct TYPE_4__* valid_hw_formats; } ;
typedef  TYPE_1__ AVHWFramesConstraints ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 

void FUNC1(AVHWFramesConstraints **constraints)
{
    if (*constraints) {
        FUNC0(&(*constraints)->valid_hw_formats);
        FUNC0(&(*constraints)->valid_sw_formats);
    }
    FUNC0(constraints);
}