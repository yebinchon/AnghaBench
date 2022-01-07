
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int sdmmc_card_t ;


 int SD_IO_CCCR_BLKSIZEH ;
 int SD_IO_CCCR_BLKSIZEL ;
 int SD_IO_FBR_START ;
 int TEST_ASSERT_EQUAL_HEX16 (int ,int ) ;
 int TEST_ESP_OK (int ) ;
 int sdmmc_io_read_byte (int *,int ,int,int *) ;
 int sdmmc_io_write_byte (int *,int ,int,int const,int *) ;

__attribute__((used)) static void sdio_slave_set_blocksize(sdmmc_card_t* card, int function, uint16_t bs)
{
    const uint8_t* bs_u8 = (const uint8_t*) &bs;
    uint16_t bs_read = 0;
    uint8_t* bs_read_u8 = (uint8_t*) &bs_read;
    uint32_t offset = SD_IO_FBR_START * function;
    TEST_ESP_OK( sdmmc_io_write_byte(card, 0, offset + SD_IO_CCCR_BLKSIZEL, bs_u8[0], ((void*)0)));
    TEST_ESP_OK( sdmmc_io_write_byte(card, 0, offset + SD_IO_CCCR_BLKSIZEH, bs_u8[1], ((void*)0)));
    TEST_ESP_OK( sdmmc_io_read_byte(card, 0, offset + SD_IO_CCCR_BLKSIZEL, &bs_read_u8[0]));
    TEST_ESP_OK( sdmmc_io_read_byte(card, 0, offset + SD_IO_CCCR_BLKSIZEH, &bs_read_u8[1]));
    TEST_ASSERT_EQUAL_HEX16(bs, bs_read);
}
