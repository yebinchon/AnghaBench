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
struct TYPE_3__ {char* settings_template; } ;
typedef  TYPE_1__ hb_filter_object_t ;

/* Variables and functions */
 char** FUNC0 (int,int) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 char** FUNC3 (char*,char) ; 
 char* FUNC4 (char*) ; 

char ** FUNC5(int filter_id)
{
    hb_filter_object_t * filter = FUNC1(filter_id);

    if (filter == NULL || filter->settings_template == NULL)
    {
        return NULL;
    }

    char ** tmpl = FUNC3(filter->settings_template, ':');
    int     ii, count = 0;

    for (ii = 0; tmpl[ii] != NULL; ii++)
    {
        count++;
    }
    char ** result = FUNC0(count + 1, sizeof(char*));
    for (ii = 0; tmpl[ii] != NULL; ii++)
    {
        char ** pair = FUNC3(tmpl[ii], '=');
        result[ii] = FUNC4(pair[0]);
        FUNC2(pair);
    }
    result[ii] = NULL;
    FUNC2(tmpl);

    return result;
}