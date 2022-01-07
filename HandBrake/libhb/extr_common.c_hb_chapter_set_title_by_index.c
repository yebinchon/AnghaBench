
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int list_chapter; } ;
typedef TYPE_1__ hb_job_t ;
typedef int hb_chapter_t ;


 int hb_chapter_set_title (int *,char const*) ;
 int * hb_list_item (int ,int) ;

void hb_chapter_set_title_by_index( hb_job_t * job, int chapter_index, const char * title )
{
    hb_chapter_t * chapter = hb_list_item( job->list_chapter, chapter_index - 1 );
    hb_chapter_set_title( chapter, title );
}
