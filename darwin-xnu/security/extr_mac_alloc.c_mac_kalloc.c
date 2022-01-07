
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;


 int M_WAITOK ;
 void* kalloc (int ) ;
 void* kalloc_noblock (int ) ;

void *
mac_kalloc(vm_size_t size, int how)
{

 if (how == M_WAITOK)
  return kalloc(size);
 else
  return kalloc_noblock(size);
}
