
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int list_chapter; } ;
typedef TYPE_2__ hb_chapter_queue_t ;
struct TYPE_11__ {scalar_t__ new_chap; int start; } ;
typedef TYPE_3__ hb_chapter_queue_item_t ;
struct TYPE_9__ {scalar_t__ new_chap; int start; } ;
struct TYPE_12__ {TYPE_1__ s; } ;
typedef TYPE_4__ hb_buffer_t ;


 int hb_list_add (int ,TYPE_3__*) ;
 TYPE_3__* malloc (int) ;

void hb_chapter_enqueue(hb_chapter_queue_t *q, hb_buffer_t *buf)
{
    hb_chapter_queue_item_t *item = malloc(sizeof(hb_chapter_queue_item_t));
    if (item != ((void*)0))
    {
        item->start = buf->s.start;
        item->new_chap = buf->s.new_chap;

        buf->s.new_chap = 0;
        hb_list_add(q->list_chapter, item);
    }
}
