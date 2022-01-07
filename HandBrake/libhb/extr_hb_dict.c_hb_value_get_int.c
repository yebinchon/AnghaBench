
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_int_t ;
typedef int hb_value_t ;


 int HB_VALUE_TYPE_INT ;
 int * hb_value_xform (int const*,int ) ;
 int json_decref (int *) ;
 int json_integer_value (int *) ;

json_int_t hb_value_get_int(const hb_value_t *value)
{
    json_int_t result;
    hb_value_t *v = hb_value_xform(value, HB_VALUE_TYPE_INT);
    result = json_integer_value(v);
    json_decref(v);
    return result;
}
