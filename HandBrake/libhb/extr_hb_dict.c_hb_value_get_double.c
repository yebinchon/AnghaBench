
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int HB_VALUE_TYPE_DOUBLE ;
 int * hb_value_xform (int const*,int ) ;
 int json_decref (int *) ;
 double json_real_value (int *) ;

double hb_value_get_double(const hb_value_t *value)
{
    double result;
    hb_value_t *v = hb_value_xform(value, HB_VALUE_TYPE_DOUBLE);
    result = json_real_value(v);
    json_decref(v);
    return result;
}
