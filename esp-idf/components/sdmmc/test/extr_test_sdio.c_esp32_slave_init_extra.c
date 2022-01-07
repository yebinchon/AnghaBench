
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int sdmmc_card_t ;


 int SLC0TX_LINK ;
 int SLCCONF1 ;
 int SLC_SLC0_RX_STITCH_EN ;
 int SLC_SLC0_TXLINK_START ;
 int SLC_SLC0_TX_STITCH_EN ;
 int TEST_ESP_OK (int ) ;
 int printf (char*) ;
 int slave_slc_reg_read (int *,int ,int*) ;
 int slave_slc_reg_write (int *,int ,int) ;

__attribute__((used)) static void esp32_slave_init_extra(sdmmc_card_t* card)
{
    printf("Initialize some ESP32 SDIO slave registers\n");

    uint32_t reg_val;
    TEST_ESP_OK( slave_slc_reg_read(card, SLCCONF1, &reg_val) );
    reg_val &= ~(SLC_SLC0_RX_STITCH_EN | SLC_SLC0_TX_STITCH_EN);
    TEST_ESP_OK( slave_slc_reg_write(card, SLCCONF1, reg_val) );

    TEST_ESP_OK( slave_slc_reg_read(card, SLC0TX_LINK, &reg_val) );
    reg_val |= SLC_SLC0_TXLINK_START;
    TEST_ESP_OK( slave_slc_reg_write(card, SLC0TX_LINK, reg_val) );
}
