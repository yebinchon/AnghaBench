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
 char* FUNC1 (char*,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 char* FUNC9 (char*) ; 
 int FUNC10 (char*) ; 

__attribute__((used)) static hb_value_t* FUNC11(const hb_value_t *value, hb_value_type_t type)
{
    hb_value_t *first = NULL;
    int count = FUNC3(value);

    if (count > 0)
        first = FUNC2(value, 0);
    switch (type)
    {
        default:
        case HB_VALUE_TYPE_NULL:
        case HB_VALUE_TYPE_BOOL:
        case HB_VALUE_TYPE_INT:
        case HB_VALUE_TYPE_DOUBLE:
            return FUNC6(first, type);
        case HB_VALUE_TYPE_STRING:
        {
            char *r = FUNC9("");
            int ii;
            for (ii = 0; ii < count; ii++)
            {
                hb_value_t *v = FUNC2(value, ii);
                hb_value_t *x = FUNC6(v, type);
                const char *s = FUNC5(x);
                if (s != NULL)
                {
                    char *tmp = r;
                    r = FUNC1("%s%s,", tmp, s);
                    FUNC0(tmp);
                }
                FUNC4(&x);
            }
            int len = FUNC10(r);
            hb_value_t *v;
            if (len > 0)
            {
                // Removing trailing ','
                r[len - 1] = 0;
                v = FUNC8(r);
            }
            else
            {
                FUNC0(r);
                r = NULL;
                v = FUNC7();
            }
            FUNC0(r);
            return v;
        }
    }
}