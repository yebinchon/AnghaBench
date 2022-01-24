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
typedef  int /*<<< orphan*/  hb_list_t ;
struct TYPE_4__ {int id; } ;
typedef  TYPE_1__ hb_filter_object_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/  const*,int) ; 

hb_filter_object_t * FUNC2(const hb_list_t *list, int filter_id)
{
    hb_filter_object_t *filter = NULL;
    int ii;

    if (list == NULL)
    {
        return NULL;
    }
    for (ii = 0; ii < FUNC0(list); ii++)
    {
        filter = FUNC1(list, ii);
        if (filter->id == filter_id)
        {
            return filter;
        }
    }

    return NULL;
}