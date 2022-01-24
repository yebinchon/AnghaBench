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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,double) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (double) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (double) ; 
 double FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 

__attribute__((used)) static hb_value_t* FUNC8(const hb_value_t *value, hb_value_type_t type)
{
    double d = FUNC6(value);
    switch (type)
    {
        default:
        case HB_VALUE_TYPE_NULL:
            return FUNC4();
        case HB_VALUE_TYPE_BOOL:
            return FUNC2((int)d != 0);
        case HB_VALUE_TYPE_INT:
            return FUNC3(d);
        case HB_VALUE_TYPE_DOUBLE:
            return FUNC5(d);
        case HB_VALUE_TYPE_STRING:
        {
            char *s = FUNC1("%g", d);
            hb_value_t *v = FUNC7(s);
            FUNC0(s);
            return v;
        }
    }
}