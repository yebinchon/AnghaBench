
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int memory_object_t ;
typedef TYPE_1__* compressor_pager_t ;
struct TYPE_3__ {scalar_t__ cpgr_num_slots_occupied; } ;


 int assert (int) ;
 int compressor_pager_lookup (int ,TYPE_1__*) ;

unsigned int
vm_compressor_pager_get_count(
 memory_object_t mem_obj)
{
 compressor_pager_t pager;

 compressor_pager_lookup(mem_obj, pager);
 if (pager == ((void*)0))
  return 0;






 assert(pager->cpgr_num_slots_occupied >= 0);

 return pager->cpgr_num_slots_occupied;
}
