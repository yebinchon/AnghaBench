
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int * json_null () ;
 int * json_string (char const*) ;

hb_value_t * hb_value_string(const char * value)
{


    if (value == ((void*)0))
        return json_null();
    return json_string(value);
}
