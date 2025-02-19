
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int memory_object_t ;
typedef scalar_t__ memory_object_offset_t ;
typedef scalar_t__ memory_object_cluster_size_t ;
typedef int kern_return_t ;
typedef int compressor_pager_t ;


 int KERN_SUCCESS ;
 scalar_t__ PAGE_SIZE ;
 int compressor_pager_lock (int ) ;
 int compressor_pager_lookup (int ,int ) ;
 int compressor_pager_unlock (int ) ;
 int panic (char*) ;

kern_return_t
compressor_memory_object_data_initialize(
 memory_object_t mem_obj,
 memory_object_offset_t offset,
 memory_object_cluster_size_t size)
{
 compressor_pager_t pager;
 memory_object_offset_t cur_offset;

 compressor_pager_lookup(mem_obj, pager);
 compressor_pager_lock(pager);

 for (cur_offset = offset;
      cur_offset < offset + size;
      cur_offset += PAGE_SIZE) {
  panic("do a data_return() if slot for this page is empty");
 }

 compressor_pager_unlock(pager);

 return KERN_SUCCESS;
}
