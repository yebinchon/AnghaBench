
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_vm_size_t ;
typedef scalar_t__ mach_vm_address_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int error ;
 int resume ;
 int setjmp (int ) ;
 char** signame ;
 int sprintf (int ,char*,char*) ;

boolean_t
check_r(mach_vm_address_t addr, mach_vm_size_t size, int *res) {
 volatile char *data = (char*)(uintptr_t)addr;
 int i, sig, test;

 if ((sig = setjmp(resume)) != 0) {
  sprintf(error, "%s when reading", signame[sig]);
  return FALSE;
 }
 test = 0;
 for (i=0; i<size; i++)
  test += (data)[i];

 if (res)
  *res = test;

 return TRUE;
}
