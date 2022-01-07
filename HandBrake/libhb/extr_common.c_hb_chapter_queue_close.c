
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int list_chapter; } ;
typedef TYPE_1__ hb_chapter_queue_t ;
typedef TYPE_1__ hb_chapter_queue_item_t ;


 int free (TYPE_1__*) ;
 int hb_list_close (int *) ;
 TYPE_1__* hb_list_item (int ,int ) ;
 int hb_list_rem (int ,TYPE_1__*) ;

void hb_chapter_queue_close(hb_chapter_queue_t **_q)
{
    hb_chapter_queue_t * q = *_q;
    hb_chapter_queue_item_t * item;

    if (q == ((void*)0))
    {
        return;
    }
    while ((item = hb_list_item(q->list_chapter, 0)) != ((void*)0))
    {
        hb_list_rem(q->list_chapter, item);
        free(item);
    }
    hb_list_close(&q->list_chapter);
    free(q);
    *_q = ((void*)0);
}
