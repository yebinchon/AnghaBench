
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_type_t ;
typedef int hb_value_t ;







 int free (char*) ;
 char* hb_strdup_printf (char*,char*,char const*) ;
 int * hb_value_array_get (int const*,int) ;
 int hb_value_array_len (int const*) ;
 int hb_value_free (int **) ;
 char* hb_value_get_string (int *) ;
 int * hb_value_xform (int *,int) ;
 int * json_null () ;
 int * json_string (char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;

__attribute__((used)) static hb_value_t* xform_array(const hb_value_t *value, hb_value_type_t type)
{
    hb_value_t *first = ((void*)0);
    int count = hb_value_array_len(value);

    if (count > 0)
        first = hb_value_array_get(value, 0);
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
            int ii;
            for (ii = 0; ii < count; ii++)
            {
                hb_value_t *v = hb_value_array_get(value, ii);
                hb_value_t *x = hb_value_xform(v, type);
                const char *s = hb_value_get_string(x);
                if (s != ((void*)0))
                {
                    char *tmp = r;
                    r = hb_strdup_printf("%s%s,", tmp, s);
                    free(tmp);
                }
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
