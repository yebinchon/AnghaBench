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
struct TYPE_4__ {int all_layouts; } ;
typedef  TYPE_1__ AVFilterChannelLayouts ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 

AVFilterChannelLayouts *FUNC1(void)
{
    AVFilterChannelLayouts *ret = FUNC0(sizeof(*ret));
    if (!ret)
        return NULL;
    ret->all_layouts = 1;
    return ret;
}