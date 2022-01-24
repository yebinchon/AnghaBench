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
typedef  int /*<<< orphan*/  GhbValue ;
typedef  int /*<<< orphan*/  GhbDictIter ;

/* Variables and functions */
 scalar_t__ GHB_DICT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(GhbValue *dst, const GhbValue *src)
{
    GhbDictIter iter;
    const char *key;
    GhbValue *val, *dst_val;

    iter = FUNC1(src);
    while (FUNC2(src, &iter, &key, &val))
    {
        dst_val = FUNC0(dst, key);
        if (FUNC5(val) == GHB_DICT)
        {
            if (dst_val == NULL || FUNC5(dst_val) != GHB_DICT)
            {
                dst_val = FUNC4(val);
                FUNC3(dst, key, dst_val);
            }
            else if (FUNC5(dst_val) == GHB_DICT)
            {
                FUNC6(dst_val, val);
            }
        }
        else
        {
            FUNC3(dst, key, FUNC4(val));
        }
    }
}