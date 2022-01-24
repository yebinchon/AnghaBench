#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const hb_value_t ;
struct TYPE_3__ {int num; int den; } ;
typedef  TYPE_1__ hb_rational_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 scalar_t__ HB_VALUE_TYPE_DICT ; 
 scalar_t__ HB_VALUE_TYPE_STRING ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 char** FUNC2 (char const*,char) ; 
 void* FUNC3 (int /*<<< orphan*/  const*) ; 
 char* FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (char) ; 
 int FUNC7 (char*,char**,int /*<<< orphan*/ ) ; 

int FUNC8(hb_rational_t *dst, const hb_dict_t * dict,
                                                 const char * key)
{
    if (dict == NULL || key == NULL || dst == NULL)
    {
        return 0;
    }

    hb_value_t *val = FUNC0(dict, key);
    if (val == NULL)
    {
        return 0;
    }

    if (FUNC5(val) == HB_VALUE_TYPE_DICT)
    {
        hb_value_t * num_val = FUNC0(val, "Num");
        if (num_val == NULL)
        {
            return 0;
        }
        hb_value_t * den_val = FUNC0(val, "Den");
        if (den_val == NULL)
        {
            return 0;
        }

        dst->num = FUNC3(num_val);
        dst->den = FUNC3(den_val);
        return 1;
    }
    else if (FUNC5(val) == HB_VALUE_TYPE_STRING)
    {
        const char * str = FUNC4(val);
        char ** rational = FUNC2(str, '/');
        if (rational[0] != NULL && rational[1] != NULL &&
            FUNC6(rational[0][0]) && FUNC6(rational[1][0]))
        {
            char *num_end, *den_end;

            // found rational format value
            int num = FUNC7(rational[0], &num_end, 0);
            int den = FUNC7(rational[1], &den_end, 0);
            // confirm that the 2 components were entirely numbers
            if (num_end[0] == 0 && den_end[0] == 0)
            {
                dst->num = num;
                dst->den = den;
                FUNC1(rational);
                return 1;
            }
        }
        FUNC1(rational);
    }

    return 0;
}