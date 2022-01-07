
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef TYPE_2__* vm_map_entry_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {int user_wired_count; int wired_count; scalar_t__ vme_start; scalar_t__ vme_end; } ;
struct TYPE_5__ {int user_wire_size; } ;


 int assert (int) ;

__attribute__((used)) static void
subtract_wire_counts(
 vm_map_t map,
 vm_map_entry_t entry,
 boolean_t user_wire)
{

 if (user_wire) {





  if (entry->user_wired_count == 1) {






   assert(entry->wired_count >= 1);
   entry->wired_count--;
   map->user_wire_size -= entry->vme_end - entry->vme_start;
  }

  assert(entry->user_wired_count >= 1);
  entry->user_wired_count--;

 } else {





  assert(entry->wired_count >= 1);
  entry->wired_count--;
 }
}
