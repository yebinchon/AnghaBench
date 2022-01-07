
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int * kpc_pm_handler ;

boolean_t
kpc_multiple_clients(void)
{
 return kpc_pm_handler != ((void*)0);
}
