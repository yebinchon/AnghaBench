
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_vm_size_t ;
typedef int boolean_t ;


 int FALSE ;
 int SUPERPAGE_SIZE ;
 int TRUE ;
 int check_kr (int,char*) ;
 int check_nr (int ,int ,int *) ;
 int error ;
 int global_addr ;
 int global_size ;
 int mach_task_self () ;
 int mach_vm_deallocate (int ,int ,int ) ;
 int sprintf (int ,char*) ;

boolean_t
test_deallocate() {
 mach_vm_size_t size = SUPERPAGE_SIZE;
 int kr, ret;

 if (!global_addr) {
  sprintf(error, "skipped deallocation");
  return FALSE;
 }
 kr = mach_vm_deallocate(mach_task_self(), global_addr, global_size);
 if (!(ret = check_kr(kr, "mach_vm_deallocate"))) return ret;
 if (!(ret = check_nr(global_addr, size, ((void*)0)))) return ret;
 return TRUE;
}
