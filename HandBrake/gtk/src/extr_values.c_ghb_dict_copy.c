
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbValue ;
typedef int GhbDictIter ;


 scalar_t__ GHB_DICT ;
 int * ghb_dict_get (int *,char const*) ;
 int ghb_dict_iter_init (int const*) ;
 scalar_t__ ghb_dict_iter_next (int const*,int *,char const**,int **) ;
 int ghb_dict_set (int *,char const*,int *) ;
 int * ghb_value_dup (int *) ;
 scalar_t__ ghb_value_type (int *) ;

void
ghb_dict_copy(GhbValue *dst, const GhbValue *src)
{
    GhbDictIter iter;
    const char *key;
    GhbValue *val, *dst_val;

    iter = ghb_dict_iter_init(src);
    while (ghb_dict_iter_next(src, &iter, &key, &val))
    {
        dst_val = ghb_dict_get(dst, key);
        if (ghb_value_type(val) == GHB_DICT)
        {
            if (dst_val == ((void*)0) || ghb_value_type(dst_val) != GHB_DICT)
            {
                dst_val = ghb_value_dup(val);
                ghb_dict_set(dst, key, dst_val);
            }
            else if (ghb_value_type(dst_val) == GHB_DICT)
            {
                ghb_dict_copy(dst_val, val);
            }
        }
        else
        {
            ghb_dict_set(dst, key, ghb_value_dup(val));
        }
    }
}
