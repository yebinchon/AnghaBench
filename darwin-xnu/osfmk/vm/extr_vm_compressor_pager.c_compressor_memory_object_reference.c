
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int memory_object_t ;
typedef TYPE_1__* compressor_pager_t ;
struct TYPE_5__ {scalar_t__ cpgr_references; } ;


 int assert (int) ;
 int compressor_pager_lock (TYPE_1__*) ;
 int compressor_pager_lookup (int ,TYPE_1__*) ;
 int compressor_pager_unlock (TYPE_1__*) ;

void
compressor_memory_object_reference(
 memory_object_t mem_obj)
{
 compressor_pager_t pager;

 compressor_pager_lookup(mem_obj, pager);
 if (pager == ((void*)0))
  return;

 compressor_pager_lock(pager);
 assert(pager->cpgr_references > 0);
 pager->cpgr_references++;
 compressor_pager_unlock(pager);
}
