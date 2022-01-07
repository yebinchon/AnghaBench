
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_3__* vm_map_t ;
typedef scalar_t__ vm_map_offset_t ;
struct vm_map_links {scalar_t__ end; struct vm_map_entry* next; struct vm_map_entry* prev; scalar_t__ start; } ;
struct TYPE_6__ {struct vm_map_entry* next; } ;
struct vm_map_entry {scalar_t__ vme_end; TYPE_1__ links; } ;
struct TYPE_8__ {scalar_t__ max_offset; TYPE_2__* holes_list; } ;
struct TYPE_7__ {struct vm_map_entry* prev; } ;


 int ARM_PMAP_MAX_OFFSET_JUMBO ;
 scalar_t__ pmap_max_offset (int ,int ) ;
 scalar_t__ trunc_page (scalar_t__) ;
 int vm_map_holes_zone ;
 int vm_map_is_64bit (TYPE_3__*) ;
 struct vm_map_links* zalloc (int ) ;

void
vm_map_set_max_addr(vm_map_t map, vm_map_offset_t new_max_offset)
{
 (void)map;
 (void)new_max_offset;

}
