
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_type_t ;
typedef int hb_value_t ;







 int * json_false () ;
 int * json_integer (int ) ;
 int * json_null () ;
 int * json_real (int ) ;
 int * json_string (char const*) ;
 char* json_string_value (int const*) ;
 int * json_true () ;
 int strcasecmp (char const*,char*) ;
 int strtod (char const*,int *) ;
 int strtoll (char const*,int *,int ) ;

__attribute__((used)) static hb_value_t* xform_string(const hb_value_t *value, hb_value_type_t type)
{
    const char *s = json_string_value(value);
    switch (type)
    {
        default:
        case 129:
        {
            return json_null();
        }
        case 132:
        {
            if (!strcasecmp(s, "true") ||
                !strcasecmp(s, "yes") ||
                !strcasecmp(s, "1"))
            {
                return json_true();
            }
            return json_false();
        }
        case 130:
        {
            return json_integer(strtoll(s, ((void*)0), 0));
        }
        case 131:
        {
            return json_real(strtod(s, ((void*)0)));
        }
        case 128:
        {
            return json_string(s);
        }
    }
}
