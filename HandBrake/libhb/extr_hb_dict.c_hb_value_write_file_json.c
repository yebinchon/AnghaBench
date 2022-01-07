
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int FILE ;


 int JSON_INDENT (int) ;
 int JSON_SORT_KEYS ;
 int json_dumpf (int *,int *,int) ;

int hb_value_write_file_json(hb_value_t *value, FILE *file)
{
    return json_dumpf(value, file, JSON_INDENT(4) | JSON_SORT_KEYS);
}
