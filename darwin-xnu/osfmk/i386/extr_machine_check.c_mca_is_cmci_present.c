
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int mca_cmci_present ;
 int mca_cpu_init () ;
 int mca_initialized ;

boolean_t
mca_is_cmci_present(void)
{
 if (!mca_initialized)
  mca_cpu_init();
 return mca_cmci_present;
}
