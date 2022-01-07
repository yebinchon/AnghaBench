
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int list_chapter; scalar_t__ duration; } ;
typedef TYPE_1__ hb_title_t ;
struct TYPE_6__ {scalar_t__ duration; } ;
typedef TYPE_2__ hb_chapter_t ;
typedef scalar_t__ gint64 ;
typedef scalar_t__ gint ;


 scalar_t__ hb_list_count (int ) ;
 TYPE_2__* hb_list_item (int ,scalar_t__) ;

gint64
ghb_chapter_range_get_duration(const hb_title_t *title, gint sc, gint ec)
{
    hb_chapter_t * chapter;
    gint count, c;
    gint64 duration;

    if (title == ((void*)0)) return 0;

    duration = title->duration;

    count = hb_list_count(title->list_chapter);
    if (sc > count) sc = count;
    if (ec > count) ec = count;

    if (sc == 1 && ec == count)
        return duration;

    duration = 0;
    for (c = sc; c <= ec; c++)
    {
        chapter = hb_list_item(title->list_chapter, c-1);
        duration += chapter->duration;
    }
    return duration;
}
