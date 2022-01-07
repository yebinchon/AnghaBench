
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int tqe_prev; } ;
struct TYPE_6__ {int stqe_next; } ;
struct TYPE_8__ {TYPE_2__ te; TYPE_1__ qe; int buf; int owner; int eof; int length; int size; } ;
typedef TYPE_3__ buf_desc_t ;


 int ESP_EARLY_LOGI (int ,char*,TYPE_3__*,int ,int ,...) ;
 int TAG ;

__attribute__((used)) static inline void show_queue_item(buf_desc_t *item)
{
    ESP_EARLY_LOGI(TAG, "=> %p: size: %d(%d), eof: %d, owner: %d", item, item->size, item->length, item->eof, item->owner);
    ESP_EARLY_LOGI(TAG, "   buf: %p, stqe_next: %p, tqe-prev: %p", item->buf, item->qe.stqe_next, item->te.tqe_prev);
}
