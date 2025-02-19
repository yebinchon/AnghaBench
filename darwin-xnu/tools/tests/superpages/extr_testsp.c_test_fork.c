
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int mach_vm_size_t ;
typedef int mach_vm_address_t ;
typedef int boolean_t ;


 int SUPERPAGE_SIZE ;
 int TRUE ;
 int VM_FLAGS_ANYWHERE ;
 int VM_FLAGS_SUPERPAGE_SIZE_2MB ;
 int check_kr (int,char*) ;
 int check_nr (int ,int ,int *) ;
 int check_rw (int ,int ) ;
 int error ;
 int exit (int) ;
 int fflush (int ) ;
 int fork () ;
 int mach_task_self () ;
 int mach_vm_allocate (int ,int *,int ,int) ;
 int mach_vm_deallocate (int ,int ,int ) ;
 int sprintf (int ,char*) ;
 int stdout ;
 int waitpid (int ,int*,int ) ;

boolean_t
test_fork() {
 mach_vm_address_t addr = 0;
 mach_vm_size_t size = SUPERPAGE_SIZE;
 int kr, ret;
 pid_t pid;

 kr = mach_vm_allocate(mach_task_self(), &addr, size, VM_FLAGS_ANYWHERE | VM_FLAGS_SUPERPAGE_SIZE_2MB);
 if (!(ret = check_kr(kr, "mach_vm_allocate"))) return ret;

 fflush(stdout);
 if ((pid=fork())) {
  if (!(ret = check_rw(addr, size))) return ret;
  waitpid(pid, &ret, 0);
  if (!ret) {
   sprintf(error, "child could access superpage");
   return ret;
  }
 } else {
  if (!(ret = check_nr(addr, size, ((void*)0)))) exit(ret);
  exit(TRUE);
 }

 kr = mach_vm_deallocate(mach_task_self(), addr, size);
 if (!(ret = check_kr(kr, "mach_vm_deallocate"))) return ret;
 return TRUE;
}
