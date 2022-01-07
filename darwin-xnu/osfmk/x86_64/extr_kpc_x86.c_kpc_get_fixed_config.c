
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kpc_config_t ;


 int IA32_FIXED_CTR_CTRL () ;

int
kpc_get_fixed_config(kpc_config_t *configv)
{
 configv[0] = IA32_FIXED_CTR_CTRL();
 return 0;
}
