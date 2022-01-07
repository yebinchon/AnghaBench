
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int * hb_plist_parse_file (char const*) ;
 int hb_presets_version (int *,int*,int*,int*) ;
 int hb_value_free (int **) ;
 int * hb_value_read_json (char const*) ;

int hb_presets_version_file(const char *filename,
                            int *major, int *minor, int *micro)
{
    int result;

    hb_value_t *preset = hb_value_read_json(filename);
    if (preset == ((void*)0))
        preset = hb_plist_parse_file(filename);
    if (preset == ((void*)0))
        return -1;

    result = hb_presets_version(preset, major, minor, micro);
    hb_value_free(&preset);

    return result;
}
