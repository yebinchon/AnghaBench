
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ type; scalar_t__ subtype; int label; } ;
typedef TYPE_1__ esp_partition_t ;
typedef TYPE_2__* esp_partition_iterator_t ;
struct TYPE_10__ {TYPE_1__ info; } ;
struct TYPE_9__ {scalar_t__ type; int subtype; TYPE_7__* next_item; TYPE_1__* info; int * label; } ;


 void* SLIST_NEXT (TYPE_7__*,int ) ;
 int _lock_acquire (int *) ;
 int _lock_release (int *) ;
 int assert (TYPE_2__*) ;
 int esp_partition_iterator_release (TYPE_2__*) ;
 int next ;
 int s_partition_list_lock ;
 scalar_t__ strcmp (int *,int ) ;

esp_partition_iterator_t esp_partition_next(esp_partition_iterator_t it)
{
    assert(it);

    if (it->next_item == ((void*)0)) {
        esp_partition_iterator_release(it);
        return ((void*)0);
    }
    _lock_acquire(&s_partition_list_lock);
    for (; it->next_item != ((void*)0); it->next_item = SLIST_NEXT(it->next_item, next)) {
        esp_partition_t* p = &it->next_item->info;
        if (it->type != p->type) {
            continue;
        }
        if (it->subtype != 0xff && it->subtype != p->subtype) {
            continue;
        }
        if (it->label != ((void*)0) && strcmp(it->label, p->label) != 0) {
            continue;
        }

        break;
    }
    _lock_release(&s_partition_list_lock);
    if (it->next_item == ((void*)0)) {
        esp_partition_iterator_release(it);
        return ((void*)0);
    }
    it->info = &it->next_item->info;
    it->next_item = SLIST_NEXT(it->next_item, next);
    return it;
}
