
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int KPC_CLASS_CONFIGURABLE_MASK ;
 int KPC_CLASS_FIXED_MASK ;

uint32_t
kpc_get_classes(void)
{
 return KPC_CLASS_FIXED_MASK | KPC_CLASS_CONFIGURABLE_MASK;
}
