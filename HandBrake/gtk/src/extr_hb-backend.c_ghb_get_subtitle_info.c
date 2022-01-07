
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int list_subtitle; } ;
typedef TYPE_1__ hb_title_t ;
typedef int hb_subtitle_t ;
typedef int gint ;


 int hb_list_count (int ) ;
 int * hb_list_item (int ,int ) ;

hb_subtitle_t*
ghb_get_subtitle_info(const hb_title_t *title, gint track)
{
    if (title == ((void*)0)) return ((void*)0);
    if (!hb_list_count(title->list_subtitle))
    {
        return ((void*)0);
    }
    return hb_list_item(title->list_subtitle, track);
}
