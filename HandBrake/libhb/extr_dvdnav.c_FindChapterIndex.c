
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hb_list_t ;
struct TYPE_3__ {int pgcn; int pgn; int index; } ;
typedef TYPE_1__ hb_dvd_chapter_t ;


 int hb_list_count (int *) ;
 TYPE_1__* hb_list_item (int *,int) ;

__attribute__((used)) static int FindChapterIndex( hb_list_t * list, int pgcn, int pgn )
{
    int count, ii;
    hb_dvd_chapter_t * chapter;

    count = hb_list_count( list );
    for (ii = 0; ii < count; ii++)
    {
        chapter = hb_list_item( list, ii );
        if (chapter->pgcn == pgcn && chapter->pgn == pgn)
            return chapter->index;
    }
    return 0;
}
