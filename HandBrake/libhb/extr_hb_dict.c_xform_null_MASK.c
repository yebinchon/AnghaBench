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
typedef  int hb_value_type_t ;
typedef  int /*<<< orphan*/  hb_value_t ;

/* Variables and functions */
#define  HB_VALUE_TYPE_BOOL 132 
#define  HB_VALUE_TYPE_DOUBLE 131 
#define  HB_VALUE_TYPE_INT 130 
#define  HB_VALUE_TYPE_NULL 129 
#define  HB_VALUE_TYPE_STRING 128 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (double) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 

__attribute__((used)) static hb_value_t* FUNC5(hb_value_type_t type)
{
    switch (type)
    {
        default:
        case HB_VALUE_TYPE_NULL:
            return FUNC2();
        case HB_VALUE_TYPE_BOOL:
            return FUNC0();
        case HB_VALUE_TYPE_INT:
            return FUNC1(0);
        case HB_VALUE_TYPE_DOUBLE:
            return FUNC3(0.0);
        case HB_VALUE_TYPE_STRING:
            return FUNC4("");
    }
}