
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;
typedef int mach_vm_size_t ;
typedef int mach_vm_address_t ;
typedef int host_t ;


 int KERN_SUCCESS ;
 int VM_FLAGS_ANYWHERE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int host_get_host_priv_port (int ,int *) ;
 char* mach_error_string (int) ;
 int mach_host_self () ;
 int mach_task_self () ;
 int mach_vm_allocate (int ,int *,int ,int ) ;
 int mach_vm_protect (int ,int ,int ,int ,int) ;
 int mach_vm_wire (int ,int ,int ,int ,int) ;
 int printf (char*,char*) ;

__attribute__((used)) static int allocate_and_wire_memory(mach_vm_size_t size) {
 int err;
 task_t task = mach_task_self();
 mach_vm_address_t addr;

 if (size <= 0)
  return 0;

 err = mach_vm_allocate(task, &addr, size, VM_FLAGS_ANYWHERE);
 if (err != KERN_SUCCESS) {
  printf("mach_vm_allocate returned non-zero: %s\n", mach_error_string(err));
  return err;
 }
 err = mach_vm_protect(task, addr, size, 0, VM_PROT_READ | VM_PROT_WRITE);;
 if (err != KERN_SUCCESS) {
  printf("mach_vm_protect returned non-zero: %s\n", mach_error_string(err));
  return err;
 }
 host_t host_priv_port;
 err = host_get_host_priv_port(mach_host_self(), &host_priv_port);
 if (err != KERN_SUCCESS) {
  printf("host_get_host_priv_port retruned non-zero: %s\n", mach_error_string(err));
  return err;
 }
 err = mach_vm_wire(host_priv_port, task, addr, size, VM_PROT_READ | VM_PROT_WRITE);
 if (err != KERN_SUCCESS) {
  printf("mach_vm_wire returned non-zero: %s\n", mach_error_string(err));
  return err;
 }

 return 0;
}
