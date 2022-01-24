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
typedef  int /*<<< orphan*/  hb_value_array_t ;

/* Variables and functions */
 scalar_t__ HB_VALUE_TYPE_ARRAY ; 
 scalar_t__ HB_VALUE_TYPE_DICT ; 
 char* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (char*) ; 

__attribute__((used)) static char * FUNC7(int filter_id, hb_value_array_t * array)
{
    char * result = FUNC6("");
    int    ii;
    int    len = FUNC4(array);
    int    first = 1;

    if (FUNC4(array) == 0)
    {
        return result;
    }
    for (ii = 0; ii < len; ii++)
    {
        hb_value_t * val = FUNC3(array, ii);
        char       * str = FUNC2(filter_id, val);
        if (str != NULL)
        {
            if (!first)
            {
                result = FUNC0(result, ",");
            }
            first = 0;
            if (FUNC5(val) == HB_VALUE_TYPE_DICT)
            {
                result = FUNC0(result, str);
            }
            else if (FUNC5(val) == HB_VALUE_TYPE_ARRAY)
            {
                result = FUNC0(result, "[");
                result = FUNC0(result, str);
                result = FUNC0(result, "]");
            }
            else
            {
                result = FUNC0(result, str);
            }
            FUNC1(str);
        }
    }

    return result;
}