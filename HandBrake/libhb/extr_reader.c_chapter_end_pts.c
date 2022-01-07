
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_5__ {int list_chapter; } ;
typedef TYPE_1__ hb_title_t ;
struct TYPE_6__ {scalar_t__ duration; } ;
typedef TYPE_2__ hb_chapter_t ;


 TYPE_2__* hb_list_item (int ,int) ;

__attribute__((used)) static int64_t chapter_end_pts(hb_title_t * title, int chapter_end )
{
    hb_chapter_t * chapter;
    int64_t duration;
    int ii;

    duration = 0;
    for (ii = 0; ii < chapter_end; ii++)
    {
        chapter = hb_list_item(title->list_chapter, ii);
        duration += chapter->duration;
    }
    return duration;
}
