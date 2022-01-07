
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vm_map_t ;
typedef int kern_return_t ;
struct TYPE_4__ {scalar_t__ nentries; int page_shift; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;

kern_return_t
vm_map_set_page_shift(
 vm_map_t map,
 int pageshift)
{
 if (map->hdr.nentries != 0) {

  return KERN_FAILURE;
 }

 map->hdr.page_shift = pageshift;

 return KERN_SUCCESS;
}
