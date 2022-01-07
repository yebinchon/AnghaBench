
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int KPC_CLASS_FIXED_MASK ;
 int kpc_running_classes ;

boolean_t
kpc_is_running_fixed(void)
{
 return (kpc_running_classes & KPC_CLASS_FIXED_MASK) == KPC_CLASS_FIXED_MASK;
}
