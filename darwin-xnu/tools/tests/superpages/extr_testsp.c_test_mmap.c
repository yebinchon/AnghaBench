
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int FALSE ;
 int MAP_ANON ;
 scalar_t__ MAP_FAILED ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int SUPERPAGE_SIZE ;
 int TRUE ;
 int VM_FLAGS_SUPERPAGE_SIZE_2MB ;
 int check_addr0 (uintptr_t,char*) ;
 int check_align (uintptr_t) ;
 int check_kr (int,char*) ;
 int check_nr (uintptr_t,int,int *) ;
 int check_nw (uintptr_t,int) ;
 int check_r (uintptr_t,int,int *) ;
 int error ;
 scalar_t__ mmap (void*,int,int ,int,int ,int ) ;
 int munmap (void*,int) ;
 int sprintf (int ,char*) ;

boolean_t
test_mmap() {
 int kr, ret;
 uintptr_t addr = 0;
 int size = SUPERPAGE_SIZE;

 addr = (uintptr_t)mmap((void*)addr, size, PROT_READ, MAP_ANON | MAP_PRIVATE, VM_FLAGS_SUPERPAGE_SIZE_2MB, 0);
 if (addr == (uintptr_t)MAP_FAILED) {
  sprintf(error, "mmap()");
  return FALSE;
 }
 if (!(ret = check_addr0(addr, "mach_vm_allocate"))) return ret;
 if (!(ret = check_align(addr))) return ret;
 if (!(ret = check_r(addr, SUPERPAGE_SIZE, ((void*)0)))) return ret;
 if (!(ret = check_nw(addr, SUPERPAGE_SIZE))) return ret;
 kr = munmap((void*)addr, size);
 if (!(ret = check_kr(kr, "munmap"))) return ret;
 if (!(ret = check_nr(addr, size, ((void*)0)))) return ret;

 return TRUE;
}
