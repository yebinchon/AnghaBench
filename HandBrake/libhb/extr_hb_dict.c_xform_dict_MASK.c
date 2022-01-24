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
typedef  scalar_t__ hb_dict_iter_t ;

/* Variables and functions */
 scalar_t__ HB_DICT_ITER_DONE ; 
#define  HB_VALUE_TYPE_BOOL 132 
#define  HB_VALUE_TYPE_DOUBLE 131 
#define  HB_VALUE_TYPE_INT 130 
#define  HB_VALUE_TYPE_NULL 129 
#define  HB_VALUE_TYPE_STRING 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 char* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 char* FUNC5 (char*,char*,char const*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 
 char* FUNC11 (char*) ; 
 int FUNC12 (char*) ; 

__attribute__((used)) static hb_value_t* FUNC13(const hb_value_t *dict, hb_value_type_t type)
{
    hb_value_t *first = NULL;
    hb_dict_iter_t iter = FUNC1(dict);

    if (iter != HB_DICT_ITER_DONE)
        first = FUNC4(iter);

    switch (type)
    {
        default:
        case HB_VALUE_TYPE_NULL:
        case HB_VALUE_TYPE_BOOL:
        case HB_VALUE_TYPE_INT:
        case HB_VALUE_TYPE_DOUBLE:
            return FUNC8(first, type);
        case HB_VALUE_TYPE_STRING:
        {
            char *r = FUNC11("");
            hb_dict_iter_t iter;
            for (iter  = FUNC1(dict);
                 iter != HB_DICT_ITER_DONE;
                 iter  = FUNC3(dict, iter))
            {
                const char *k = FUNC2(iter);
                hb_value_t *v = FUNC4(iter);
                hb_value_t *x = FUNC8(v, type);
                const char *s = FUNC7(x);

                char *tmp = r;
                r = FUNC5("%s%s%s%s:",
                                     r,
                                     k,
                                     s  ? "=" : "",
                                     s  ? s   : "");
                FUNC0(tmp);
                FUNC6(&x);
            }
            int len = FUNC12(r);
            hb_value_t *v;
            if (len > 0)
            {
                // Removing trailing ':'
                r[len - 1] = 0;
                v = FUNC10(r);
            }
            else
            {
                FUNC0(r);
                r = NULL;
                v = FUNC9();
            }
            FUNC0(r);
            return v;
        }
    }
}