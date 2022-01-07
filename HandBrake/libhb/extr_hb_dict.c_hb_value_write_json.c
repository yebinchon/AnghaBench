
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int JSON_INDENT (int) ;
 int JSON_SORT_KEYS ;
 int json_dump_file (int *,char const*,int) ;

int hb_value_write_json(hb_value_t *value, const char *path)
{
    return json_dump_file(value, path, JSON_INDENT(4) | JSON_SORT_KEYS);
}
