
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int sdmmc_card_t ;
typedef int esp_err_t ;


 int BIT (int ) ;
 int FUNC1_EN_MASK ;
 int SD_IO_CCCR_CARD_CAP ;
 int SD_IO_CCCR_FN_ENABLE ;
 int SD_IO_CCCR_FN_READY ;
 int SD_IO_CCCR_HIGHSPEED ;
 int SD_IO_CCCR_INT_ENABLE ;
 int TEST_ESP_OK (int ) ;
 int printf (char*,int) ;
 int sdmmc_io_read_byte (int *,int ,int ,int*) ;
 int sdmmc_io_write_byte (int *,int ,int ,int,int *) ;

__attribute__((used)) static void sdio_slave_common_init(sdmmc_card_t* card)
{
    uint8_t card_cap;
    esp_err_t err = sdmmc_io_read_byte(card, 0, SD_IO_CCCR_CARD_CAP, &card_cap);
    TEST_ESP_OK(err);
    printf("CAP: 0x%02x\n", card_cap);

    uint8_t hs;
    err = sdmmc_io_read_byte(card, 0, SD_IO_CCCR_HIGHSPEED, &hs);
    TEST_ESP_OK(err);
    printf("HS: 0x%02x\n", hs);




    uint8_t ioe;
    err = sdmmc_io_read_byte(card, 0, SD_IO_CCCR_FN_ENABLE, &ioe);
    TEST_ESP_OK(err);
    printf("IOE: 0x%02x\n", ioe);

    uint8_t ior = 0;
    err = sdmmc_io_read_byte(card, 0, SD_IO_CCCR_FN_READY, &ior);
    TEST_ESP_OK(err);
    printf("IOR: 0x%02x\n", ior);


    ioe |= (BIT(1));
    err = sdmmc_io_write_byte(card, 0, SD_IO_CCCR_FN_ENABLE, ioe, ((void*)0));
    TEST_ESP_OK(err);

    err = sdmmc_io_read_byte(card, 0, SD_IO_CCCR_FN_ENABLE, &ioe);
    TEST_ESP_OK(err);
    printf("IOE: 0x%02x\n", ioe);


    while ( (ior & (BIT(1))) == 0 ) {
        err = sdmmc_io_read_byte(card, 0, SD_IO_CCCR_FN_READY, &ior);
        TEST_ESP_OK(err);
        printf("IOR: 0x%02x\n", ior);
    }


    uint8_t ie;
    err = sdmmc_io_read_byte(card, 0, SD_IO_CCCR_INT_ENABLE, &ie);
    TEST_ESP_OK(err);
    printf("IE: 0x%02x\n", ie);


    ie |= BIT(0) | (BIT(1));
    err = sdmmc_io_write_byte(card, 0, SD_IO_CCCR_INT_ENABLE, ie, ((void*)0));
    TEST_ESP_OK(err);

    err = sdmmc_io_read_byte(card, 0, SD_IO_CCCR_INT_ENABLE, &ie);
    TEST_ESP_OK(err);
    printf("IE: 0x%02x\n", ie);
}
