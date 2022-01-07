
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int text; } ;
typedef TYPE_1__ json_error_t ;
typedef int hb_value_t ;


 int hb_error (char*,int ) ;
 int * json_loads (char const*,int ,TYPE_1__*) ;

hb_value_t * hb_value_json(const char *json)
{
    json_error_t error;
    hb_value_t *val = json_loads(json, 0, &error);
    if (val == ((void*)0))
    {
        hb_error("hb_value_json: Failed, error %s", error.text);
    }
    return val;
}
