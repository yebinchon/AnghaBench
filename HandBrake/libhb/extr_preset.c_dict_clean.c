
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ hb_value_type_t ;
typedef int hb_value_t ;
typedef scalar_t__ hb_dict_iter_t ;


 scalar_t__ HB_DICT_ITER_DONE ;
 scalar_t__ HB_VALUE_TYPE_ARRAY ;
 scalar_t__ HB_VALUE_TYPE_DICT ;
 int * hb_dict_get (int *,char const*) ;
 scalar_t__ hb_dict_iter_init (int *) ;
 char* hb_dict_iter_key (scalar_t__) ;
 scalar_t__ hb_dict_iter_next (int *,scalar_t__) ;
 int * hb_dict_iter_value (scalar_t__) ;
 int hb_dict_remove (int *,char const*) ;
 int hb_dict_set (int *,char const*,int *) ;
 int hb_error (char*,char const*,char const*) ;
 int * hb_value_array_get (int *,int) ;
 int hb_value_array_len (int *) ;
 int * hb_value_dup (int *) ;
 int hb_value_free (int **) ;
 int hb_value_get_bool (int *) ;
 char* hb_value_get_string (int *) ;
 scalar_t__ hb_value_is_number (int *) ;
 scalar_t__ hb_value_type (int *) ;
 int * hb_value_xform (int *,scalar_t__) ;

__attribute__((used)) static void
dict_clean(hb_value_t *dict, hb_value_t *template)
{
    hb_value_t *tmp = hb_value_dup(dict);
    hb_dict_iter_t iter;
    const char *key;
    hb_value_t *val;
    hb_value_t *template_val;
    hb_value_type_t template_type, val_type;
    const char *preset_name = ((void*)0);

    val = hb_dict_get(dict, "PresetName");
    if (val != ((void*)0))
        preset_name = hb_value_get_string(val);



    for (iter = hb_dict_iter_init(tmp);
         iter != HB_DICT_ITER_DONE;
         iter = hb_dict_iter_next(tmp, iter))
    {
        key = hb_dict_iter_key(iter);
        val = hb_dict_iter_value(iter);
        val_type = hb_value_type(val);

        template_val = hb_dict_get(template, key);
        template_type = hb_value_type(template_val);
        if (template_val == ((void*)0))
        {


            hb_dict_remove(dict, key);
        }
        else if (val_type != template_type)
        {
            if (val_type == HB_VALUE_TYPE_DICT ||
                val_type == HB_VALUE_TYPE_ARRAY ||
                template_type == HB_VALUE_TYPE_DICT ||
                template_type == HB_VALUE_TYPE_ARRAY)
            {
                hb_error("Preset %s: Incompatible value types for key %s. "
                         "Dropping.", preset_name, key);
                hb_dict_remove(dict, key);
            }
            else if (hb_value_is_number(val) &&
                     hb_value_is_number(template_val))
            {

                hb_value_t *v;
                v = hb_value_xform(val, template_type);
                hb_dict_set(dict, key, v);
            }
            else
            {
                hb_value_t *v;
                hb_error("Preset %s: Incorrect value type for key %s. "
                         "Converting.", preset_name, key);
                v = hb_value_xform(val, template_type);
                hb_dict_set(dict, key, v);
            }
        }
        else if (val_type == HB_VALUE_TYPE_DICT &&
                 template_type == HB_VALUE_TYPE_DICT)
        {
            val = hb_dict_get(dict, key);
            dict_clean(val, template_val);
        }
        else if (val_type == HB_VALUE_TYPE_ARRAY &&
                 template_type == HB_VALUE_TYPE_ARRAY &&
                 hb_value_array_len(template_val) > 0)
        {
            template_val = hb_value_array_get(template_val, 0);
            if (hb_value_type(template_val) == HB_VALUE_TYPE_DICT)
            {
                val = hb_dict_get(dict, key);
                int count = hb_value_array_len(val);
                int ii;
                for (ii = 0; ii < count; ii++)
                {
                    hb_value_t *array_val;
                    array_val = hb_value_array_get(val, ii);
                    if (hb_value_type(array_val) == HB_VALUE_TYPE_DICT)
                    {
                        dict_clean(array_val, template_val);
                    }
                }
            }
        }
    }
    hb_value_free(&tmp);

    if (!hb_value_get_bool(hb_dict_get(dict, "Folder")))
    {

        for (iter = hb_dict_iter_init(template);
             iter != HB_DICT_ITER_DONE;
             iter = hb_dict_iter_next(template, iter))
        {
            key = hb_dict_iter_key(iter);
            template_val = hb_dict_iter_value(iter);
            val = hb_dict_get(dict, key);
            if (val == ((void*)0))
            {
                hb_dict_set(dict, key, hb_value_dup(template_val));
            }
        }
    }
}
