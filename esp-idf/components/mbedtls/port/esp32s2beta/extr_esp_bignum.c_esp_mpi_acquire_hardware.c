
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPORT_CLK_EN_RSA ;
 int DPORT_PERI_CLK_EN_REG ;
 int DPORT_PERI_RST_EN_REG ;
 int DPORT_REG_CLR_BIT (int ,int) ;
 int DPORT_REG_READ (int ) ;
 int DPORT_REG_SET_BIT (int ,int ) ;
 int DPORT_RSA_MEM_PD ;
 int DPORT_RSA_PD_CTRL_REG ;
 int DPORT_RST_EN_DIGITAL_SIGNATURE ;
 int DPORT_RST_EN_RSA ;
 int DPORT_RST_EN_SECURE_BOOT ;
 int RSA_QUERY_CLEAN_REG ;
 int _lock_acquire (int *) ;
 int mpi_lock ;
 int rsa_isr_initialise () ;

void esp_mpi_acquire_hardware( void )
{

    _lock_acquire(&mpi_lock);

    DPORT_REG_SET_BIT(DPORT_PERI_CLK_EN_REG, DPORT_CLK_EN_RSA);

    DPORT_REG_CLR_BIT(DPORT_PERI_RST_EN_REG, DPORT_RST_EN_RSA
                      | DPORT_RST_EN_DIGITAL_SIGNATURE
                      | DPORT_RST_EN_SECURE_BOOT);

    DPORT_REG_CLR_BIT(DPORT_RSA_PD_CTRL_REG, DPORT_RSA_MEM_PD);

    while(DPORT_REG_READ(RSA_QUERY_CLEAN_REG) != 1) {
    }





}
