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
typedef  int /*<<< orphan*/  hb_handle_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 scalar_t__ HB_VALUE_TYPE_ARRAY ; 
 scalar_t__ HB_VALUE_TYPE_DICT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ die ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC7(hb_handle_t *h, const char *queue_import_name)
{
    hb_value_t * queue = FUNC5(queue_import_name);

    if (FUNC6(queue) == HB_VALUE_TYPE_DICT)
    {
        return FUNC0(h, FUNC2(queue, "Job"));
    }
    else if (FUNC6(queue) == HB_VALUE_TYPE_ARRAY)
    {
        int ii, count, result = 0;

        count = FUNC4(queue);
        for (ii = 0; ii < count; ii++)
        {
            hb_dict_t * entry = FUNC3(queue, ii);
            int ret = FUNC0(h, FUNC2(entry, "Job"));
            if (ret < 0)
            {
                result = ret;
            }
            if (die)
            {
                break;
            }
        }
        return result;
    }
    else
    {
        FUNC1(stderr, "Error: Invalid queue file %s\n", queue_import_name);
        return -1;
    }
    return 0;
}