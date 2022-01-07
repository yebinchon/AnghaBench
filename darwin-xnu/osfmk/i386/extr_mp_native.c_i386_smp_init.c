
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i386_intr_func_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int install_real_mode_bootstrap (int ) ;
 int lapic_configure () ;
 int lapic_init () ;
 int lapic_probe () ;
 int lapic_set_intr_func (int,int ) ;
 int slave_pstart ;

boolean_t
i386_smp_init(int nmi_vector, i386_intr_func_t nmi_handler, int ipi_vector, i386_intr_func_t ipi_handler)
{

 if (!lapic_probe())
  return FALSE;

 lapic_init();
 lapic_configure();
 lapic_set_intr_func(nmi_vector, nmi_handler);
 lapic_set_intr_func(ipi_vector, ipi_handler);

 install_real_mode_bootstrap(slave_pstart);

 return TRUE;
}
