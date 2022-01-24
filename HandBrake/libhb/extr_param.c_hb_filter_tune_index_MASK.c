#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int index; } ;
typedef  TYPE_1__ hb_filter_param_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*,char const*,int) ; 
 TYPE_1__* FUNC1 (int,int*) ; 

int
FUNC2(int filter_id, const char *tune)
{
    if (tune == NULL)
        return -1;

    int tune_count;
    hb_filter_param_t *tune_table;
    hb_filter_param_t *tune_entry;

    tune_table = FUNC1(filter_id, &tune_count);
    tune_entry = FUNC0(tune_table, tune, tune_count);
    if (tune_entry == NULL)
    {
        return -1;
    }
    return tune_entry->index;
}