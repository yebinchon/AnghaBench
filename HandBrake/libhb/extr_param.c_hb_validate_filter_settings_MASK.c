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
typedef  int /*<<< orphan*/  hb_value_t ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/ * settings_template; } ;
typedef  TYPE_1__ hb_filter_object_t ;
typedef  int /*<<< orphan*/  const hb_dict_t ;
typedef  scalar_t__ hb_dict_iter_t ;

/* Variables and functions */
 scalar_t__ HB_DICT_ITER_DONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 char* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,scalar_t__) ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  const* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const**) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(int filter_id, const hb_dict_t * settings)
{
    hb_filter_object_t * filter;
    hb_dict_t          * settings_template;
    hb_dict_iter_t       iter;

    if (settings == NULL)
        return 0;

    // Verify that all keys in settings are in the filter settings template
    filter = FUNC5(filter_id);
    if (filter == NULL)
    {
        FUNC6("hb_validate_filter_settings: Unrecognized filter (%d).\n",
               filter_id);
        return 1;
    }
    if (filter->settings_template == NULL)
    {
        // filter has no template to verify settings against
        return 0;
    }
    settings_template = FUNC7(filter->settings_template);
    if (settings_template == NULL)
    {
        FUNC6("hb_validate_filter_settings: invalid template!");
        return 0;
    }

    for (iter = FUNC2(settings);
         iter != HB_DICT_ITER_DONE;
         iter = FUNC4(settings, iter))
    {
        const char * key;
        hb_value_t * val;

        key = FUNC3(iter);

        // Check if key found in settings is also found in the template
        val = FUNC1(settings_template, key);
        if (val == NULL)
        {
            // Key is missing from template, indicate invalid settings
            FUNC6("Invalid filter key (%s) for filter %s",
                    key, filter->name);
            return 1;
        }

        // If a string value is found, and it is non-empty,
        // it is a regex pattern for allowed values.
        const char * regex_pattern = FUNC10(val);
        if (regex_pattern != NULL && regex_pattern[0] != 0)
        {
            char * param;
            param = FUNC11(FUNC1(settings, key));
            if (FUNC8(regex_pattern, param) != 0)
            {
                FUNC6("Invalid filter value (%s) for key %s filter %s",
                        param, key, filter->name);
                FUNC0(param);
                return 1;
            }
            FUNC0(param);
        }
    }
    FUNC9(&settings_template);

    return 0;
}