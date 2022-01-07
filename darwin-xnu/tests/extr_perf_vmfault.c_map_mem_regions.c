
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int vm_address_t ;


 int FALSE ;
 int MAP_ANON ;
 int MAP_FAILED ;
 int MAP_PRIVATE ;
 int MEMSIZE ;
 int PROT_READ ;
 int PROT_WRITE ;
 scalar_t__ SOFT_FAULT ;
 int T_ASSERT_MACH_SUCCESS (int ,char*) ;
 int T_ASSERT_NE (void*,int ,char*) ;
 int T_QUIET ;
 int VM_FLAGS_ANYWHERE ;
 int VM_INHERIT_DEFAULT ;
 int mach_task_self () ;
 char* memblock ;
 int memblock_share ;
 scalar_t__ mmap (int *,int,int,int,int,int ) ;
 int pgsize ;
 scalar_t__ test_type ;
 int vm_remap (int ,int *,int,int ,int ,int ,int ,int ,int *,int *,int ) ;

__attribute__((used)) static void map_mem_regions(void)
{
 char *ptr;
 volatile char val;
 vm_prot_t curprot, maxprot;

 memblock = (char *)mmap(((void*)0), MEMSIZE, PROT_READ | PROT_WRITE, MAP_ANON | MAP_PRIVATE, -1, 0);
 T_QUIET; T_ASSERT_NE((void *)memblock, MAP_FAILED, "mmap");

 if (test_type == SOFT_FAULT) {


  for(ptr = memblock; ptr < memblock + MEMSIZE; ptr += pgsize) {
   val = *ptr;
  }

  T_QUIET; T_ASSERT_MACH_SUCCESS(vm_remap(mach_task_self(), (vm_address_t *)&memblock_share,
     MEMSIZE, 0, VM_FLAGS_ANYWHERE, mach_task_self(), (vm_address_t)memblock, FALSE,
     &curprot, &maxprot, VM_INHERIT_DEFAULT), "vm_remap");
 }
}
