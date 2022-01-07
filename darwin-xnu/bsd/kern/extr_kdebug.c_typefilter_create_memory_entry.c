
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * typefilter_t ;
typedef int memory_object_size_t ;
typedef int memory_object_offset_t ;
typedef int mach_port_t ;


 int MACH_PORT_NULL ;
 int TYPEFILTER_ALLOC_SIZE ;
 int VM_PROT_READ ;
 int assert (int ) ;
 int kernel_map ;
 int mach_make_memory_entry_64 (int ,int *,int ,int ,int *,int ) ;

__attribute__((used)) static mach_port_t typefilter_create_memory_entry(typefilter_t tf)
{
 assert(tf != ((void*)0));

 mach_port_t memory_entry = MACH_PORT_NULL;
 memory_object_size_t size = TYPEFILTER_ALLOC_SIZE;

 mach_make_memory_entry_64(kernel_map,
      &size,
      (memory_object_offset_t)tf,
      VM_PROT_READ,
      &memory_entry,
      MACH_PORT_NULL);

 return memory_entry;
}
