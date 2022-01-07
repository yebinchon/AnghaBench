
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_type_t ;
typedef int hb_value_t ;







 int free (char*) ;
 char* hb_strdup_printf (char*,double) ;
 int * json_boolean (int) ;
 int * json_integer (double) ;
 int * json_null () ;
 int * json_real (double) ;
 double json_real_value (int const*) ;
 int * json_string (char*) ;

__attribute__((used)) static hb_value_t* xform_double(const hb_value_t *value, hb_value_type_t type)
{
    double d = json_real_value(value);
    switch (type)
    {
        default:
        case 129:
            return json_null();
        case 132:
            return json_boolean((int)d != 0);
        case 130:
            return json_integer(d);
        case 131:
            return json_real(d);
        case 128:
        {
            char *s = hb_strdup_printf("%g", d);
            hb_value_t *v = json_string(s);
            free(s);
            return v;
        }
    }
}
