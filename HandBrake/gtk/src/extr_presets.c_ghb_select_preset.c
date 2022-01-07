
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int signal_user_data_t ;
typedef int hb_preset_index_t ;


 int free (int *) ;
 int * hb_preset_search_index (char const*,int,int) ;
 int select_preset2 (int *,int *) ;

void
ghb_select_preset(signal_user_data_t *ud, const char *name, int type)
{
    hb_preset_index_t *path;

    path = hb_preset_search_index(name, 1, type);
    if (path != ((void*)0))
    {
        select_preset2(ud, path);
        free(path);
    }
}
