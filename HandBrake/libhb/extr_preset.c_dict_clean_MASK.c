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
typedef  scalar_t__ hb_value_type_t ;
typedef  int /*<<< orphan*/  hb_value_t ;
typedef  scalar_t__ hb_dict_iter_t ;

/* Variables and functions */
 scalar_t__ HB_DICT_ITER_DONE ; 
 scalar_t__ HB_VALUE_TYPE_ARRAY ; 
 scalar_t__ HB_VALUE_TYPE_DICT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 char* FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC17(hb_value_t *dict, hb_value_t *template)
{
    hb_value_t *tmp = FUNC10(dict);
    hb_dict_iter_t iter;
    const char *key;
    hb_value_t *val;
    hb_value_t *template_val;
    hb_value_type_t template_type, val_type;
    const char *preset_name = NULL;

    val = FUNC0(dict, "PresetName");
    if (val != NULL)
        preset_name = FUNC13(val);

    // Remove keys that are not in the template and translate compatible
    // data types to the types used in the template.
    for (iter = FUNC1(tmp);
         iter != HB_DICT_ITER_DONE;
         iter = FUNC3(tmp, iter))
    {
        key = FUNC2(iter);
        val = FUNC4(iter);
        val_type = FUNC15(val);

        template_val = FUNC0(template, key);
        template_type = FUNC15(template_val);
        if (template_val == NULL)
        {
            // Unknown key.  These can be keys used privately by the
            // frontend.  So don't make noise about them.
            FUNC5(dict, key);
        }
        else if (val_type != template_type)
        {
            if (val_type      == HB_VALUE_TYPE_DICT  ||
                val_type      == HB_VALUE_TYPE_ARRAY ||
                template_type == HB_VALUE_TYPE_DICT  ||
                template_type == HB_VALUE_TYPE_ARRAY)
            {
                FUNC7("Preset %s: Incompatible value types for key %s. "
                         "Dropping.", preset_name, key);
                FUNC5(dict, key);
            }
            else if (FUNC14(val) &&
                     FUNC14(template_val))
            {
                // Silently convert compatible numbers
                hb_value_t *v;
                v = FUNC16(val, template_type);
                FUNC6(dict, key, v);
            }
            else
            {
                hb_value_t *v;
                FUNC7("Preset %s: Incorrect value type for key %s. "
                         "Converting.", preset_name, key);
                v = FUNC16(val, template_type);
                FUNC6(dict, key, v);
            }
        }
        else if (val_type      == HB_VALUE_TYPE_DICT &&
                 template_type == HB_VALUE_TYPE_DICT)
        {
            val = FUNC0(dict, key);
            FUNC17(val, template_val);
        }
        else if (val_type      == HB_VALUE_TYPE_ARRAY &&
                 template_type == HB_VALUE_TYPE_ARRAY &&
                 FUNC9(template_val) > 0)
        {
            template_val = FUNC8(template_val, 0);
            if (FUNC15(template_val) == HB_VALUE_TYPE_DICT)
            {
                val = FUNC0(dict, key);
                int count = FUNC9(val);
                int ii;
                for (ii = 0; ii < count; ii++)
                {
                    hb_value_t *array_val;
                    array_val = FUNC8(val, ii);
                    if (FUNC15(array_val) == HB_VALUE_TYPE_DICT)
                    {
                        FUNC17(array_val, template_val);
                    }
                }
            }
        }
    }
    FUNC11(&tmp);

    if (!FUNC12(FUNC0(dict, "Folder")))
    {
        // Add key/value pairs that are in the template but not in the dict.
        for (iter = FUNC1(template);
             iter != HB_DICT_ITER_DONE;
             iter = FUNC3(template, iter))
        {
            key          = FUNC2(iter);
            template_val = FUNC4(iter);
            val          = FUNC0(dict, key);
            if (val == NULL)
            {
                FUNC6(dict, key, FUNC10(template_val));
            }
        }
    }
}