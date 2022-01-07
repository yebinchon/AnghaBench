
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int hb_filter_object_t ;
typedef int hb_dict_t ;
typedef int hb_dict_iter_t ;


 scalar_t__ HB_VALUE_TYPE_ARRAY ;
 scalar_t__ HB_VALUE_TYPE_DICT ;
 scalar_t__ HB_VALUE_TYPE_INT ;
 scalar_t__ HB_VALUE_TYPE_NULL ;
 char* append_string (char*,char const*) ;
 int free (char*) ;
 int hb_dict_elements (int *) ;
 int * hb_dict_get (int *,char const*) ;
 int hb_dict_iter_init (int *) ;
 int hb_dict_iter_next_ex (int *,int *,char const**,int *) ;
 int * hb_filter_get (int) ;
 char** hb_filter_get_keys (int) ;
 char* hb_filter_settings_string (int,int *) ;
 int hb_str_vfree (char**) ;
 char* hb_strdup_printf (char*,int,int) ;
 int hb_value_array_len (int *) ;
 int hb_value_get_int (int *) ;
 scalar_t__ hb_value_type (int *) ;
 char* strdup (char*) ;

__attribute__((used)) static char * stringify_dict(int filter_id, hb_dict_t * dict)
{
    char * result = strdup("");
    const char * key;
    char ** keys = ((void*)0);
    hb_value_t * val;
    hb_dict_iter_t iter;
    int first = 1;

    if (hb_dict_elements(dict) == 0)
    {
        return result;
    }

    if (hb_dict_elements(dict) == 2)
    {
        hb_value_t *num_val = hb_dict_get(dict, "Num");
        hb_value_t *den_val = hb_dict_get(dict, "Den");
        if (num_val != ((void*)0) && den_val != ((void*)0) &&
            hb_value_type(num_val) == HB_VALUE_TYPE_INT &&
            hb_value_type(den_val) == HB_VALUE_TYPE_INT)
        {
            int num = hb_value_get_int(num_val);
            int den = hb_value_get_int(den_val);
            char * str = hb_strdup_printf("%d/%d", num, den);
            result = append_string(result, str);
            free(str);
            return result;
        }
    }
    hb_filter_object_t * filter = hb_filter_get(filter_id);
    if (filter != ((void*)0))
    {
        keys = hb_filter_get_keys(filter_id);
        if (keys != ((void*)0) && keys[0] == ((void*)0))
        {
            hb_str_vfree(keys);
            keys = ((void*)0);
        }
    }

    int done, ii = 0;
    iter = hb_dict_iter_init(dict);
    if (keys == ((void*)0))
    {
        done = !hb_dict_iter_next_ex(dict, &iter, &key, ((void*)0));
    }
    else
    {
        done = (key = keys[ii]) == ((void*)0);
    }
    while (!done)
    {
        val = hb_dict_get(dict, key);
        if (val != ((void*)0))
        {
            if (!first)
            {
                result = append_string(result, ":");
            }
            first = 0;
            result = append_string(result, key);
            int elements = 1;

            if (hb_value_type(val) == HB_VALUE_TYPE_NULL)
            {
                elements = 0;
            }
            else if (hb_value_type(val) == HB_VALUE_TYPE_DICT)
            {
                elements = hb_dict_elements(val);
            }
            else if (hb_value_type(val) == HB_VALUE_TYPE_ARRAY)
            {
                elements = hb_value_array_len(val);
            }
            if (elements != 0)
            {
                char * str = hb_filter_settings_string(filter_id, val);
                if (str != ((void*)0))
                {
                    result = append_string(result, "=");
                    if (hb_value_type(val) == HB_VALUE_TYPE_DICT)
                    {
                        result = append_string(result, "'");
                        result = append_string(result, str);
                        result = append_string(result, "'");
                    }
                    else if (hb_value_type(val) == HB_VALUE_TYPE_ARRAY)
                    {
                        result = append_string(result, "[");
                        result = append_string(result, str);
                        result = append_string(result, "]");
                    }
                    else
                    {
                        result = append_string(result, str);
                    }
                    free(str);
                }
            }
        }
        ii++;
        if (keys == ((void*)0))
        {
            done = !hb_dict_iter_next_ex(dict, &iter, &key, ((void*)0));
        }
        else
        {
            done = (key = keys[ii]) == ((void*)0);
        }
    }
    hb_str_vfree(keys);

    return result;
}
