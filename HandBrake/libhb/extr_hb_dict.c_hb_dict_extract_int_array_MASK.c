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
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 scalar_t__ HB_VALUE_TYPE_ARRAY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(int *dst, int count,
                              const hb_dict_t * dict, const char * key)
{
    if (dict == NULL || key == NULL || dst == NULL)
    {
        return 0;
    }

    hb_value_t *val = FUNC0(dict, key);
    if (FUNC4(val) != HB_VALUE_TYPE_ARRAY)
    {
        return 0;
    }

    int len = FUNC2(val);
    count = count < len ? count : len;

    int ii;
    for (ii = 0; ii < count; ii++)
    {
        dst[ii] = FUNC3(FUNC1(val, ii));
    }
    return 1;
}