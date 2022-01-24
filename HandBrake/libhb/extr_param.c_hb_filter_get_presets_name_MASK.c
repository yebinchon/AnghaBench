#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ hb_filter_param_t ;

/* Variables and functions */
 char** FUNC0 (int,int) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 

char ** FUNC3(int filter_id)
{
    int                 ii, count = 0;
    hb_filter_param_t * table;

    table = FUNC1(filter_id, NULL);

    for (count = 0; table[count].name != NULL; count++);
    char ** result = FUNC0(count + 1, sizeof(char*));
    for (ii = 0; ii < count; ii++)
    {
        result[ii] = FUNC2(table[ii].name);
    }
    result[ii] = NULL;

    return result;
}