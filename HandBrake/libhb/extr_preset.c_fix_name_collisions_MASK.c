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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 char* FUNC6 (char const*) ; 

__attribute__((used)) static char * FUNC7(hb_value_t * list, const char * name)
{
    char * new_name = FUNC6(name);
    int    ii, jj, count;

    count = FUNC4(list);
    for (ii = 0, jj = 0; ii < count; ii++)
    {
        hb_value_t * item = FUNC3(list, ii);
        const char * preset_name;

        preset_name = FUNC1(item, "PresetName");
        if (!FUNC5(new_name, preset_name))
        {
            // Collision, add a number and try again
            FUNC0(new_name);
            new_name = FUNC2("%s - %d", name, jj++);
            ii = -1;
        }
    }
    return new_name;
}