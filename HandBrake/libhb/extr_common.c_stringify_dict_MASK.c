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
typedef  int /*<<< orphan*/  hb_filter_object_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;
typedef  int /*<<< orphan*/  hb_dict_iter_t ;

/* Variables and functions */
 scalar_t__ HB_VALUE_TYPE_ARRAY ; 
 scalar_t__ HB_VALUE_TYPE_DICT ; 
 scalar_t__ HB_VALUE_TYPE_INT ; 
 scalar_t__ HB_VALUE_TYPE_NULL ; 
 char* FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 char** FUNC7 (int) ; 
 char* FUNC8 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char**) ; 
 char* FUNC10 (char*,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 char* FUNC14 (char*) ; 

__attribute__((used)) static char * FUNC15(int filter_id, hb_dict_t * dict)
{
    char            * result = FUNC14("");
    const char      * key;
    char           ** keys = NULL;
    hb_value_t      * val;
    hb_dict_iter_t    iter;
    int               first = 1;

    if (FUNC2(dict) == 0)
    {
        return result;
    }
    // Check for dict containing rational value
    if (FUNC2(dict) == 2)
    {
        hb_value_t *num_val = FUNC3(dict, "Num");
        hb_value_t *den_val = FUNC3(dict, "Den");
        if (num_val != NULL && den_val != NULL &&
            FUNC13(num_val) == HB_VALUE_TYPE_INT &&
            FUNC13(den_val) == HB_VALUE_TYPE_INT)
        {
            int num = FUNC12(num_val);
            int den = FUNC12(den_val);
            char * str = FUNC10("%d/%d", num, den);
            result = FUNC0(result, str);
            FUNC1(str);
            return result;
        }
    }
    hb_filter_object_t * filter = FUNC6(filter_id);
    if (filter != NULL)
    {
        keys = FUNC7(filter_id);
        if (keys != NULL && keys[0] == NULL)
        {
            FUNC9(keys);
            keys = NULL;
        }
    }

    int done, ii = 0;
    iter = FUNC4(dict);
    if (keys == NULL)
    {
        done = !FUNC5(dict, &iter, &key, NULL);
    }
    else
    {
        done = (key = keys[ii]) == NULL;
    }
    while (!done)
    {
        val = FUNC3(dict, key);
        if (val != NULL)
        {
            if (!first)
            {
                result = FUNC0(result, ":");
            }
            first = 0;
            result = FUNC0(result, key);
            int elements = 1;

            if (FUNC13(val) == HB_VALUE_TYPE_NULL)
            {
                elements = 0;
            }
            else if (FUNC13(val) == HB_VALUE_TYPE_DICT)
            {
                elements = FUNC2(val);
            }
            else if (FUNC13(val) == HB_VALUE_TYPE_ARRAY)
            {
                elements = FUNC11(val);
            }
            if (elements != 0)
            {
                char * str = FUNC8(filter_id, val);
                if (str != NULL)
                {
                    result = FUNC0(result, "=");
                    if (FUNC13(val) == HB_VALUE_TYPE_DICT)
                    {
                        result = FUNC0(result, "'");
                        result = FUNC0(result, str);
                        result = FUNC0(result, "'");
                    }
                    else if (FUNC13(val) == HB_VALUE_TYPE_ARRAY)
                    {
                        result = FUNC0(result, "[");
                        result = FUNC0(result, str);
                        result = FUNC0(result, "]");
                    }
                    else
                    {
                        result = FUNC0(result, str);
                    }
                    FUNC1(str);
                }
            }
        }
        ii++;
        if (keys == NULL)
        {
            done = !FUNC5(dict, &iter, &key, NULL);
        }
        else
        {
            done = (key = keys[ii]) == NULL;
        }
    }
    FUNC9(keys);

    return result;
}