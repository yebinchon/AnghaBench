
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* vm_object_t ;
struct TYPE_5__ {scalar_t__ prev; scalar_t__ next; } ;
struct TYPE_6__ {TYPE_1__ cached_list; } ;


 int vm_object_cache_lock_spin () ;
 int vm_object_cache_remove_locked (TYPE_2__*) ;
 int vm_object_cache_unlock () ;

void
vm_object_cache_remove(
 vm_object_t object)
{
 vm_object_cache_lock_spin();

 if (object->cached_list.next &&
     object->cached_list.prev)
  vm_object_cache_remove_locked(object);

 vm_object_cache_unlock();
}
