
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPORT_PERI_CLK_EN_REG ;
 int DPORT_PERI_EN_RSA ;
 int DPORT_PERI_RST_EN_REG ;
 int DPORT_REG_CLR_BIT (int ,int ) ;
 int DPORT_REG_SET_BIT (int ,int ) ;
 int DPORT_RSA_PD ;
 int DPORT_RSA_PD_CTRL_REG ;
 int _lock_release (int *) ;
 int mpi_lock ;

void esp_mpi_release_hardware( void )
{
    DPORT_REG_SET_BIT(DPORT_RSA_PD_CTRL_REG, DPORT_RSA_PD);


    DPORT_REG_SET_BIT(DPORT_PERI_RST_EN_REG, DPORT_PERI_EN_RSA);
    DPORT_REG_CLR_BIT(DPORT_PERI_CLK_EN_REG, DPORT_PERI_EN_RSA);

    _lock_release(&mpi_lock);
}
