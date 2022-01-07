
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_error_t ;
typedef int hb_value_t ;


 int * json_load_file (char const*,int ,int *) ;

hb_value_t * hb_value_read_json(const char *path)
{
    json_error_t error;
    hb_value_t *val = json_load_file(path, 0, &error);
    return val;
}
