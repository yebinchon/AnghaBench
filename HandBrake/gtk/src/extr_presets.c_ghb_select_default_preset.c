
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int signal_user_data_t ;
struct TYPE_7__ {scalar_t__ depth; } ;
typedef TYPE_1__ hb_preset_index_t ;


 int HB_PRESET_TYPE_ALL ;
 int g_free (TYPE_1__*) ;
 TYPE_1__* hb_preset_index_init (int*,int) ;
 TYPE_1__* hb_preset_search_index (char*,int,int ) ;
 TYPE_1__* hb_presets_get_default_index () ;
 int select_preset2 (int *,TYPE_1__*) ;

void
ghb_select_default_preset(signal_user_data_t *ud)
{
    hb_preset_index_t *path;

    path = hb_presets_get_default_index();
    if (path == ((void*)0) || path->depth == 0)
    {

        g_free(path);
        path = hb_preset_search_index("Fast 1080p30", 1, HB_PRESET_TYPE_ALL);
    }
    if (path == ((void*)0) || path->depth == 0)
    {
        int index[2] = {0, 0};


        g_free(path);
        path = hb_preset_index_init(index, 2);
    }
    if (path != ((void*)0))
    {
        select_preset2(ud, path);
        g_free(path);
    }
}
