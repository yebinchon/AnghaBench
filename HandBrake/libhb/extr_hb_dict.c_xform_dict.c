
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_type_t ;
typedef int hb_value_t ;
typedef scalar_t__ hb_dict_iter_t ;


 scalar_t__ HB_DICT_ITER_DONE ;





 int free (char*) ;
 scalar_t__ hb_dict_iter_init (int const*) ;
 char* hb_dict_iter_key (scalar_t__) ;
 scalar_t__ hb_dict_iter_next (int const*,scalar_t__) ;
 int * hb_dict_iter_value (scalar_t__) ;
 char* hb_strdup_printf (char*,char*,char const*,char*,char const*) ;
 int hb_value_free (int **) ;
 char* hb_value_get_string (int *) ;
 int * hb_value_xform (int *,int) ;
 int * json_null () ;
 int * json_string (char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;

__attribute__((used)) static hb_value_t* xform_dict(const hb_value_t *dict, hb_value_type_t type)
{
    hb_value_t *first = ((void*)0);
    hb_dict_iter_t iter = hb_dict_iter_init(dict);

    if (iter != HB_DICT_ITER_DONE)
        first = hb_dict_iter_value(iter);

    switch (type)
    {
        default:
        case 129:
        case 132:
        case 130:
        case 131:
            return hb_value_xform(first, type);
        case 128:
        {
            char *r = strdup("");
            hb_dict_iter_t iter;
            for (iter = hb_dict_iter_init(dict);
                 iter != HB_DICT_ITER_DONE;
                 iter = hb_dict_iter_next(dict, iter))
            {
                const char *k = hb_dict_iter_key(iter);
                hb_value_t *v = hb_dict_iter_value(iter);
                hb_value_t *x = hb_value_xform(v, type);
                const char *s = hb_value_get_string(x);

                char *tmp = r;
                r = hb_strdup_printf("%s%s%s%s:",
                                     r,
                                     k,
                                     s ? "=" : "",
                                     s ? s : "");
                free(tmp);
                hb_value_free(&x);
            }
            int len = strlen(r);
            hb_value_t *v;
            if (len > 0)
            {

                r[len - 1] = 0;
                v = json_string(r);
            }
            else
            {
                free(r);
                r = ((void*)0);
                v = json_null();
            }
            free(r);
            return v;
        }
    }
}
