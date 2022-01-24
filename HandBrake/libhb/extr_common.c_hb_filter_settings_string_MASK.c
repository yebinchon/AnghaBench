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
 scalar_t__ HB_VALUE_TYPE_ARRAY ; 
 scalar_t__ HB_VALUE_TYPE_DICT ; 
 scalar_t__ HB_VALUE_TYPE_NULL ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (int,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int,int /*<<< orphan*/ *) ; 

char * FUNC5(int filter_id, hb_value_t * value)
{
    if (value == NULL || FUNC1(value) == HB_VALUE_TYPE_NULL)
    {
        return FUNC2("");
    }
    if (FUNC1(value) == HB_VALUE_TYPE_DICT)
    {
        return FUNC4(filter_id, value);
    }
    if (FUNC1(value) == HB_VALUE_TYPE_ARRAY)
    {
        return FUNC3(filter_id, value);
    }
    return FUNC0(value);
}