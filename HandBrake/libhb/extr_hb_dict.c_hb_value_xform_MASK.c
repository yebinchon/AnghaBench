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
#define  HB_VALUE_TYPE_ARRAY 134 
#define  HB_VALUE_TYPE_BOOL 133 
#define  HB_VALUE_TYPE_DICT 132 
#define  HB_VALUE_TYPE_DOUBLE 131 
#define  HB_VALUE_TYPE_INT 130 
#define  HB_VALUE_TYPE_NULL 129 
#define  HB_VALUE_TYPE_STRING 128 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/  const*,int) ; 

hb_value_t* FUNC9(const hb_value_t *value, hb_value_type_t type)
{
    hb_value_type_t src_type = FUNC0(value);
    if (src_type == type && value != NULL)
    {
        FUNC1((hb_value_t*)value);
        return (hb_value_t*)value;
    }
    switch (src_type)
    {
        default:
        case HB_VALUE_TYPE_NULL:
        {
            return FUNC7(type);
        }
        case HB_VALUE_TYPE_BOOL:
        {
            return FUNC3(value, type);
        }
        case HB_VALUE_TYPE_INT:
        {
            return FUNC6(value, type);
        }
        case HB_VALUE_TYPE_DOUBLE:
        {
            return FUNC5(value, type);
        }
        case HB_VALUE_TYPE_STRING:
        {
            return FUNC8(value, type);
        }
        case HB_VALUE_TYPE_ARRAY:
        {
            return FUNC2(value, type);
        }
        case HB_VALUE_TYPE_DICT:
        {
            return FUNC4(value, type);
        }
    }
}