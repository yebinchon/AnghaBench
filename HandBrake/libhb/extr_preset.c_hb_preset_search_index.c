
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_preset_index_t ;


 int * preset_lookup_path (char const*,int,int) ;

hb_preset_index_t * hb_preset_search_index(const char *name,
                                           int recurse, int type)
{
    return preset_lookup_path(name, recurse, type);
}
