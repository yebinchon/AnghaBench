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
typedef  int /*<<< orphan*/  hb_value_array_t ;
struct TYPE_3__ {int /*<<< orphan*/ * name; int /*<<< orphan*/ * short_name; } ;
typedef  TYPE_1__ hb_filter_param_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

char * FUNC8(int filter_id)
{
    hb_value_array_t  * array = FUNC4();
    int                 ii, count = 0;
    hb_filter_param_t * table;

    table = FUNC0(filter_id, NULL);

    for (count = 0; table[count].name != NULL; count++);
    for (ii = 0; ii < count; ii++)
    {
        hb_dict_t * dict = FUNC1();
        FUNC2(dict, "short_name", FUNC7(table[ii].short_name));
        FUNC2(dict, "name", FUNC7(table[ii].name));
        FUNC3(array, dict);
    }

    char * result = FUNC6(array);
    FUNC5(&array);
    return result;
}