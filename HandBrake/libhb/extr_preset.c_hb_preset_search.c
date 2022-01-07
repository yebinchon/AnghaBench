
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int hb_preset_index_t ;


 int free (int *) ;
 int * hb_preset_get (int *) ;
 int * preset_lookup_path (char const*,int,int) ;

hb_value_t * hb_preset_search(const char *name, int recurse, int type)
{
    hb_preset_index_t *path = preset_lookup_path(name, recurse, type);
    hb_value_t *preset = hb_preset_get(path);
    free(path);
    return preset;
}
