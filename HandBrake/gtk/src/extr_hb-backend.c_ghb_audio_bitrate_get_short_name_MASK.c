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
struct TYPE_4__ {int rate; char const* name; } ;
typedef  TYPE_1__ hb_rate_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__ const*) ; 

const char*
FUNC1(int rate)
{
    const hb_rate_t *hb_rate, *first;
    for (first = hb_rate = FUNC0(NULL); hb_rate != NULL;
         hb_rate = FUNC0(hb_rate))
    {
        if (rate == hb_rate->rate)
        {
            return hb_rate->name;
        }
    }
    return first->name;
}