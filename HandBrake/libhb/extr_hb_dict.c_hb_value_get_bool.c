
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int HB_VALUE_TYPE_BOOL ;
 int * hb_value_xform (int const*,int ) ;
 int json_decref (int *) ;
 int json_is_true (int *) ;

int hb_value_get_bool(const hb_value_t *value)
{
    int result;
    hb_value_t *v = hb_value_xform(value, HB_VALUE_TYPE_BOOL);
    result = json_is_true(v);
    json_decref(v);
    return result;
}
