
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int * typefilter_t ;


 int TYPEFILTER_ALLOC_SIZE ;
 int assert (int) ;
 int * kdbg_typefilter ;
 int kernel_map ;
 int kmem_free (int ,int ,int ) ;

__attribute__((used)) static void typefilter_deallocate(typefilter_t tf)
{
 assert(tf != ((void*)0));
 assert(tf != kdbg_typefilter);
 kmem_free(kernel_map, (vm_offset_t)tf, TYPEFILTER_ALLOC_SIZE);
}
