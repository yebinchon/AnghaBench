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
struct TYPE_3__ {char* settings_template; } ;
typedef  TYPE_1__ hb_filter_object_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int) ; 
 char* FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char**) ; 
 char** FUNC8 (char*,char) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(hb_value_t * preset, int filter_id,
                                 const char * key)
{
    char *str = FUNC9(FUNC1(preset, key));
    if (str == NULL)
    {
        return;
    }
    hb_filter_object_t * filter = FUNC4(filter_id);
    if (filter == NULL)
    {
        FUNC6("import_custom_11_1_0: invalid filter id %d\n", filter_id);
        return;
    }
    if (filter->settings_template == NULL)
    {
        return;
    }
    char ** values = FUNC8(str, ':');
    char ** tmpl   = FUNC8(filter->settings_template, ':');
    int     ii;

    FUNC0(str);
    hb_dict_t * dict = FUNC2();
    for (ii = 0; values[ii] != NULL; ii++)
    {
        if (tmpl[ii] == NULL)
        {
            // Incomplete template?
            break;
        }
        char ** pair = FUNC8(tmpl[ii], '=');
        if (pair[0] != NULL)
        {
            FUNC3(dict, pair[0], FUNC10(values[ii]));
        }
        FUNC7(pair);
    }
    FUNC7(tmpl);
    FUNC7(values);

    char * result = FUNC5(filter_id, dict);
    FUNC3(preset, key, FUNC10(result));
    FUNC0(result);
}