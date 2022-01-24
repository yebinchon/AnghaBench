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
struct TYPE_6__ {int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ hb_filter_param_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*,char const*,int) ; 
 TYPE_1__* FUNC1 (int,int*) ; 
 TYPE_1__* FUNC2 (int,int*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 

int
FUNC7(int filter_id, const char *preset, const char *tune,
                          const char *custom)
{
    if (preset == NULL)
        return 1;

    int preset_count, tune_count;
    hb_filter_param_t *preset_table, *tune_table;
    hb_filter_param_t *preset_entry, *tune_entry;

    preset_table = FUNC1(filter_id, &preset_count);
    preset_entry = FUNC0(preset_table, preset, preset_count);
    if (preset_entry == NULL || preset_entry->name == NULL)
        return 1;
    if (!FUNC6(preset, "custom") && custom != NULL)
    {
        hb_dict_t * settings = FUNC3(custom);
        if (settings == NULL)
        {
            return 1;
        }
        int result = FUNC4(filter_id, settings);
        FUNC5(&settings);
        return result;
    }
    if (tune != NULL)
    {
        tune_table = FUNC2(filter_id, &tune_count);
        tune_entry = FUNC0(tune_table, tune, tune_count);
        if (tune_entry == NULL)
        {
            return 1;
        }
    }
    return 0;
}