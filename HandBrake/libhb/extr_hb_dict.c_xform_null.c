
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_type_t ;
typedef int hb_value_t ;







 int * json_false () ;
 int * json_integer (int ) ;
 int * json_null () ;
 int * json_real (double) ;
 int * json_string (char*) ;

__attribute__((used)) static hb_value_t* xform_null(hb_value_type_t type)
{
    switch (type)
    {
        default:
        case 129:
            return json_null();
        case 132:
            return json_false();
        case 130:
            return json_integer(0);
        case 131:
            return json_real(0.0);
        case 128:
            return json_string("");
    }
}
