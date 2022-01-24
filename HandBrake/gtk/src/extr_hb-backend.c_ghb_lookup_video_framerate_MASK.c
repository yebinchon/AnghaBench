#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int rate; } ;
typedef  TYPE_1__ hb_rate_t ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 TYPE_1__* FUNC1 (TYPE_1__ const*) ; 
 TYPE_1__ const sas_rate ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 

const hb_rate_t*
FUNC3(const char *name)
{
    // Check for special "Same as source" value
    if (!FUNC2(name, "auto", 8))
        return &sas_rate;

    // First find an enabled rate
    int rate = FUNC0(name);

    // Now find the matching rate info
    const hb_rate_t *hb_rate, *first;
    for (first = hb_rate = FUNC1(NULL); hb_rate != NULL;
         hb_rate = FUNC1(hb_rate))
    {
        if (rate == hb_rate->rate)
        {
            return hb_rate;
        }
    }
    // Return a default rate if nothing matches
    return first;
}