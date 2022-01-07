
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int arg ;


 int EPERM ;
 scalar_t__ PE_parse_boot_argn (char*,char*,int) ;
 int copyin_update (int ) ;
 scalar_t__ global_update ;
 int printf (char*) ;
 int xcpu_update () ;

int
ucode_interface(uint64_t addr)
{
 int error;
 char arg[16];

 if (PE_parse_boot_argn("-x", arg, sizeof (arg))) {
  printf("ucode: no updates in safe mode\n");
  return EPERM;
 }







 if (global_update)
  return EPERM;



 error = copyin_update(addr);

 if (error)
  return error;


 xcpu_update();

 return 0;
}
