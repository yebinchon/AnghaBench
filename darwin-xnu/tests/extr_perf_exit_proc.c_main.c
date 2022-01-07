
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mach_vm_size_t ;


 int allocate_and_wire_memory (scalar_t__) ;
 int run_additional_threads (int) ;
 scalar_t__ strtoul (char*,int *,int) ;

int main(int argc, char *argv[]) {
 int nthreads = 0;
 int err;
 mach_vm_size_t wired_mem = 0;

 if (argc > 1) {
  nthreads = (int)strtoul(argv[1], ((void*)0), 10);
 }
 if (argc > 2) {
  wired_mem = (mach_vm_size_t)strtoul(argv[2], ((void*)0), 10);
 }

 err = allocate_and_wire_memory(wired_mem);
 if (err) {
  return err;
 }

 err = run_additional_threads(nthreads);
 if (err) {
  return err;
 }

 return 0;
}
