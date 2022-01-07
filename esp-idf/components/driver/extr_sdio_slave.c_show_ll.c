
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int stqe_next; } ;
struct TYPE_6__ {TYPE_1__ qe; int buf; int owner; int eof; int length; int size; } ;
typedef TYPE_2__ lldesc_t ;


 int ESP_EARLY_LOGI (int ,char*,TYPE_2__*,int ,...) ;
 int TAG ;

__attribute__((used)) static inline void show_ll(lldesc_t *item)
{
    ESP_EARLY_LOGI(TAG, "=> %p: size: %d(%d), eof: %d, owner: %d", item, item->size, item->length, item->eof, item->owner);
    ESP_EARLY_LOGI(TAG, "   buf: %p, stqe_next: %p", item->buf, item->qe.stqe_next);
}
