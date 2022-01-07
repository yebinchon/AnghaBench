
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int * json_real (double) ;

hb_value_t * hb_value_double(double value)
{
    return json_real(value);
}
