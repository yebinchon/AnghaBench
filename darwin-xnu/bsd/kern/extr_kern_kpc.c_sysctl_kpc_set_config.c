
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EPERM ;
 int KPC_CLASS_POWER_MASK ;
 int kpc_set_config (int,void*) ;

__attribute__((used)) static int
sysctl_kpc_set_config(uint32_t classes, void* buf)
{

 if (classes & KPC_CLASS_POWER_MASK)
  return (EPERM);
 return kpc_set_config( classes, buf);
}
