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
typedef  int /*<<< orphan*/  IniContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_tracker_group ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(bool *use_storage_id)
{
    IniContext iniContext;
	int result;
	bool continue_flag;

	continue_flag = false;
	if ((result=FUNC0(&g_tracker_group,
		&iniContext, &continue_flag, false, NULL)) != 0)
    {
        return result;
    }

	*use_storage_id = FUNC3(NULL, "use_storage_id",
            &iniContext, false);
    FUNC2(&iniContext);

	if (*use_storage_id)
	{
		result = FUNC1(
				&g_tracker_group);
	}

    return result;
}