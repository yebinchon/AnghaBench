
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sys_prot_t ;


 int g_lwip_protect_mutex ;
 int sys_mutex_lock (int *) ;

sys_prot_t
sys_arch_protect(void)
{
  sys_mutex_lock(&g_lwip_protect_mutex);
  return (sys_prot_t) 1;
}
