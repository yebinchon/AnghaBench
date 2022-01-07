
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int list_subtitle; } ;
typedef TYPE_1__ hb_title_t ;
struct TYPE_5__ {char* iso639_2; } ;
typedef TYPE_2__ hb_subtitle_t ;
typedef int gint ;
typedef int gchar ;


 int hb_list_count (int ) ;
 scalar_t__ hb_list_item (int ,int) ;
 scalar_t__ strcmp (int const*,char*) ;

gint
ghb_find_subtitle_track(const hb_title_t * title, const gchar * lang, int start)
{
    hb_subtitle_t * subtitle;
    gint count, ii;

    count = hb_list_count(title->list_subtitle);


    for (ii = start; ii < count; ii++)
    {
        subtitle = (hb_subtitle_t*)hb_list_item( title->list_subtitle, ii );
        if (strcmp(lang, subtitle->iso639_2) == 0 ||
            strcmp(lang, "und") == 0)
        {
            return ii;
        }
    }
    return -1;
}
