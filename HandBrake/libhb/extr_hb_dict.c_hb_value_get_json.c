
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int JSON_INDENT (int) ;
 int JSON_SORT_KEYS ;
 char* json_dumps (int const*,int) ;

char * hb_value_get_json(const hb_value_t *value)
{
    return json_dumps(value, JSON_INDENT(4) | JSON_SORT_KEYS);
}
