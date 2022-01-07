
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* zone_t ;
struct TYPE_9__ {int all_free; int intermediate; int all_used; } ;
struct TYPE_10__ {int zone_valid; int doing_alloc_without_vm_priv; int doing_alloc_with_vm_priv; int async_pending; int waiting; int async_prio_refill; scalar_t__ count; scalar_t__ countfree; scalar_t__ cur_size; scalar_t__ page_count; scalar_t__ count_all_free_pages; unsigned int index; TYPE_1__ pages; int zone_name; } ;


 int FALSE ;
 int all_zones_lock ;
 int assert (int) ;
 int bitmap_set (int ,unsigned int) ;
 int bitmap_test (int ,unsigned int) ;
 int drop_free_elements (TYPE_2__*) ;
 int gzalloc_empty_free_cache (TYPE_2__*) ;
 int lock_zone (TYPE_2__*) ;
 scalar_t__ num_zones_in_use ;
 int panic (char*,int ) ;
 int queue_empty (int *) ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int unlock_zone (TYPE_2__*) ;
 scalar_t__ zone_caching_enabled (TYPE_2__*) ;
 int zone_empty_bitmap ;

void
zdestroy(zone_t z)
{
 unsigned int zindex;

 assert(z != ((void*)0));

 lock_zone(z);
 assert(z->zone_valid);


 assert(z->doing_alloc_without_vm_priv == FALSE);
 assert(z->doing_alloc_with_vm_priv == FALSE);
 assert(z->async_pending == FALSE);
 assert(z->waiting == FALSE);
 assert(z->async_prio_refill == FALSE);






 z->zone_valid = FALSE;

 unlock_zone(z);
 drop_free_elements(z);






 lock_zone(z);



 assert(z->count == 0);
 assert(z->countfree == 0);
 assert(z->cur_size == 0);
 assert(z->page_count == 0);
 assert(z->count_all_free_pages == 0);


 assert(queue_empty(&z->pages.all_used));
 assert(queue_empty(&z->pages.intermediate));
 assert(queue_empty(&z->pages.all_free));


 zindex = z->index;

 unlock_zone(z);

 simple_lock(&all_zones_lock);

 assert(!bitmap_test(zone_empty_bitmap, zindex));

 bitmap_set(zone_empty_bitmap, zindex);
 num_zones_in_use--;
 assert(num_zones_in_use > 0);

 simple_unlock(&all_zones_lock);
}
