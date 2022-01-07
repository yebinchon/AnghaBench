
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int list_chapter; } ;
typedef TYPE_1__ hb_title_t ;
struct TYPE_6__ {int duration; } ;
typedef TYPE_2__ hb_chapter_t ;
typedef int gint64 ;
typedef scalar_t__ gint ;


 scalar_t__ hb_list_count (int ) ;
 TYPE_2__* hb_list_item (int ,scalar_t__) ;

gint64
ghb_get_chapter_duration(const hb_title_t *title, gint chap)
{
    hb_chapter_t * chapter;
    gint count;

    if (title == ((void*)0)) return 0;
    count = hb_list_count( title->list_chapter );
    if (chap >= count) return 0;
    chapter = hb_list_item(title->list_chapter, chap);
    if (chapter == ((void*)0)) return 0;
    return chapter->duration;
}
