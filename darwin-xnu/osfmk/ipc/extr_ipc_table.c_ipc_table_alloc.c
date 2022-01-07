
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;


 void* kalloc (int ) ;

void *
ipc_table_alloc(
 vm_size_t size)
{
 return kalloc(size);
}
