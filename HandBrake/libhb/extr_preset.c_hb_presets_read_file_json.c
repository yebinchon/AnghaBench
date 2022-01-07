
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int * hb_plist_parse_file (char const*) ;
 char* hb_value_get_json (int *) ;
 int * hb_value_read_json (char const*) ;

char * hb_presets_read_file_json(const char *filename)
{
    char *result;
    hb_value_t *preset = hb_value_read_json(filename);
    if (preset == ((void*)0))
        preset = hb_plist_parse_file(filename);
    if (preset == ((void*)0))
        return ((void*)0);

    result = hb_value_get_json(preset);
    return result;
}
