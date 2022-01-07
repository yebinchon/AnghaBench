
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int hb_value_free (int **) ;
 int hb_value_write_json (int *,char const*) ;
 int * presets_package (int const*) ;

int hb_presets_write_json(const hb_value_t *preset, const char *path)
{
    hb_value_t *packaged_preset = presets_package(preset);

    if (packaged_preset == ((void*)0))
        return -1;
    int result = hb_value_write_json(packaged_preset, path);
    hb_value_free(&packaged_preset);
    return result;
}
