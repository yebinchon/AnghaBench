
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPORT_PERI_CLK_EN_REG ;
 int DPORT_PERI_EN_AES ;
 int DPORT_PERI_RST_EN_REG ;
 int REG_CLR_BIT (int ,int ) ;
 int REG_SET_BIT (int ,int ) ;
 int aes_spinlock ;
 int portEXIT_CRITICAL (int *) ;

void esp_aes_release_hardware( void )
{

    REG_SET_BIT(DPORT_PERI_RST_EN_REG, DPORT_PERI_EN_AES);


    REG_CLR_BIT(DPORT_PERI_CLK_EN_REG, DPORT_PERI_EN_AES);

    portEXIT_CRITICAL(&aes_spinlock);
}
