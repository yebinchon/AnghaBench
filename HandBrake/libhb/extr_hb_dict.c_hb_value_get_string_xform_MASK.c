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
typedef  int /*<<< orphan*/  const hb_value_t ;

/* Variables and functions */
 scalar_t__ HB_VALUE_TYPE_NULL ; 
 int /*<<< orphan*/  HB_VALUE_TYPE_STRING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

char*
FUNC5(const hb_value_t *value)
{
    char *result;
    if (FUNC0(value) == HB_VALUE_TYPE_NULL)
        return NULL;
    hb_value_t *v = FUNC1(value, HB_VALUE_TYPE_STRING);
    if (FUNC0(v) == HB_VALUE_TYPE_NULL)
        return NULL;
    result = FUNC4(FUNC3(v));
    FUNC2(v);
    return result;
}