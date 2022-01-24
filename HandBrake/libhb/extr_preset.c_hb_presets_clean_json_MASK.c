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
typedef  int /*<<< orphan*/  hb_value_t ;

/* Variables and functions */
 int /*<<< orphan*/  hb_preset_template ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

char * FUNC4(const char *json)
{
    hb_value_t * dict = FUNC2(json);
    if (dict == NULL)
        return NULL;

    FUNC3(dict, hb_preset_template);
    char * result = FUNC1(dict);
    FUNC0(&dict);
    return result;
}