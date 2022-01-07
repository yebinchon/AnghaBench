
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sys_prot_t ;


 int LWIP_UNUSED_ARG (int ) ;
 int g_lwip_protect_mutex ;
 int sys_mutex_unlock (int *) ;

void
sys_arch_unprotect(sys_prot_t pval)
{
  LWIP_UNUSED_ARG(pval);
  sys_mutex_unlock(&g_lwip_protect_mutex);
}
