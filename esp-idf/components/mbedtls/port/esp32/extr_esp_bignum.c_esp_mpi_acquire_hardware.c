
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPORT_REG_CLR_BIT (int ,int ) ;
 int DPORT_REG_READ (int ) ;
 int DPORT_RSA_PD ;
 int DPORT_RSA_PD_CTRL_REG ;
 int PERIPH_RSA_MODULE ;
 int RSA_CLEAN_REG ;
 int _lock_acquire (int *) ;
 int mpi_lock ;
 int periph_module_enable (int ) ;

void esp_mpi_acquire_hardware( void )
{

    _lock_acquire(&mpi_lock);


    periph_module_enable(PERIPH_RSA_MODULE);
    DPORT_REG_CLR_BIT(DPORT_RSA_PD_CTRL_REG, DPORT_RSA_PD);

    while(DPORT_REG_READ(RSA_CLEAN_REG) != 1);

}
