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
typedef  int /*<<< orphan*/  hb_value_t ;
struct TYPE_6__ {char const* settings; } ;
typedef  TYPE_1__ hb_filter_param_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*,char const*,int) ; 
 TYPE_1__* FUNC1 (int,int*) ; 
 TYPE_1__* FUNC2 (int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 

__attribute__((used)) static hb_value_t *
FUNC7(int filter_id, const char * preset,
                          const char * tune, const char * custom)
{
    if ((preset == NULL || !FUNC6(preset, "custom")))
    {
        return FUNC4(custom);
    }

    int count;
    hb_filter_param_t *table;
    hb_filter_param_t *entry;

    hb_value_t * settings = NULL, * tune_settings = NULL;

    table = FUNC1(filter_id, &count);
    entry = FUNC0(table, preset, count);
    if (entry != NULL && entry->settings != NULL)
    {
        settings = FUNC4(entry->settings);
        if (settings == NULL)
        {
            return NULL;
        }

        table = FUNC2(filter_id, &count);
        entry = FUNC0(table, tune, count);
        if (entry != NULL && entry->settings != NULL)
        {
            tune_settings = FUNC4(entry->settings);
            if (tune_settings == NULL)
            {
                FUNC5(&settings);
                return NULL;
            }
            FUNC3(settings, tune_settings);
            FUNC5(&tune_settings);
        }
    }

    return settings;
}