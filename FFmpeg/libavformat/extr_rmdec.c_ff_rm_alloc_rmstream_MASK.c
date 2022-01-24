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
struct TYPE_4__ {int curpic_num; } ;
typedef  TYPE_1__ RMStream ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 

RMStream *FUNC1 (void)
{
    RMStream *rms = FUNC0(sizeof(RMStream));
    if (!rms)
        return NULL;
    rms->curpic_num = -1;
    return rms;
}