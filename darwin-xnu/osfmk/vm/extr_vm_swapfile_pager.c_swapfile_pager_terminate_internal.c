
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* swapfile_pager_t ;
struct TYPE_4__ {int mo_control; } ;
struct TYPE_5__ {int is_ready; TYPE_1__ swp_pgr_hdr; int * swapfile_vnode; int is_mapped; } ;


 int assert (int) ;
 int memory_object_destroy (int ,int ) ;

void
swapfile_pager_terminate_internal(
 swapfile_pager_t pager)
{
 assert(pager->is_ready);
 assert(!pager->is_mapped);

 if (pager->swapfile_vnode != ((void*)0)) {
  pager->swapfile_vnode = ((void*)0);
 }


 memory_object_destroy(pager->swp_pgr_hdr.mo_control, 0);
}
