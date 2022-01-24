#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 char** FUNC5 (char const*,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 char* FUNC8 (char*) ; 
 int FUNC9 (char*) ; 

hb_dict_t * FUNC10(const char * settings_str)
{
    hb_dict_t  * dict = FUNC2();
    char      ** settings_list = FUNC5(settings_str, ':');
    int          ii;

    for (ii = 0; settings_list[ii] != NULL; ii++)
    {
        char * key, * value;
        char ** settings_pair = FUNC5(settings_list[ii], '=');
        if (settings_pair[0] == NULL || settings_pair[1] == NULL)
        {
            // Parse error. Not key=value pair.
            FUNC4(settings_list);
            FUNC4(settings_pair);
            FUNC6(&dict);
            FUNC3("hb_parse_filter_settings: Error parsing (%s)",
                   settings_str);
            return NULL;
        }
        key   = settings_pair[0];
        value = settings_pair[1];

        int last = FUNC9(value) - 1;
        // Check if value was quoted dictionary and remove quotes
        // and parse the sub-dictionary.  This should only happen
        // for avfilter settings.
        if (last > 0 && value[0] == '\'' && value[last] == '\'')
        {
            char * str = FUNC8(value + 1);
            str[last - 1] = 0;
            hb_dict_t * sub_dict = FUNC10(str);
            FUNC0(str);
            if (sub_dict == NULL)
            {
                // Parse error. Not key=value pair.
                FUNC4(settings_list);
                FUNC4(settings_pair);
                FUNC6(&dict);
                FUNC3("hb_parse_filter_settings: Error parsing (%s)",
                       settings_str);
                return NULL;
            }
            FUNC1(dict, key, sub_dict);
        }
        // Check if value was quoted string and remove quotes
        else if (last > 0 && value[0] == '"' && value[last] == '"')
        {
            char * str = FUNC8(value + 1);
            str[last - 1] = 0;
            FUNC1(dict, key, FUNC7(str));
            FUNC0(str);
        }
        else
        {
            FUNC1(dict, key, FUNC7(value));
        }

        FUNC4(settings_pair);
    }
    FUNC4(settings_list);

    return dict;
}