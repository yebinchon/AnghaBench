
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPORT_REG_SET_BIT (int ,int ) ;
 int DPORT_RSA_PD ;
 int DPORT_RSA_PD_CTRL_REG ;
 int PERIPH_RSA_MODULE ;
 int _lock_release (int *) ;
 int mpi_lock ;
 int periph_module_disable (int ) ;

void esp_mpi_release_hardware( void )
{
    DPORT_REG_SET_BIT(DPORT_RSA_PD_CTRL_REG, DPORT_RSA_PD);


    periph_module_disable(PERIPH_RSA_MODULE);

    _lock_release(&mpi_lock);
}
