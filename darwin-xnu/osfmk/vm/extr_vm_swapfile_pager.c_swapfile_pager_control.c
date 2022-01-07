
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* swapfile_pager_t ;
typedef TYPE_3__* memory_object_t ;
typedef int memory_object_control_t ;
struct TYPE_10__ {int * mo_pager_ops; } ;
struct TYPE_8__ {int mo_control; } ;
struct TYPE_9__ {TYPE_1__ swp_pgr_hdr; } ;


 int MEMORY_OBJECT_CONTROL_NULL ;
 TYPE_3__* MEMORY_OBJECT_NULL ;
 TYPE_2__* swapfile_pager_lookup (TYPE_3__*) ;
 int swapfile_pager_ops ;

memory_object_control_t
swapfile_pager_control(
 memory_object_t mem_obj)
{
 swapfile_pager_t pager;

 if (mem_obj == MEMORY_OBJECT_NULL ||
     mem_obj->mo_pager_ops != &swapfile_pager_ops) {
  return MEMORY_OBJECT_CONTROL_NULL;
 }
 pager = swapfile_pager_lookup(mem_obj);
 return pager->swp_pgr_hdr.mo_control;
}
