
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef size_t uint16_t ;
typedef int sdmmc_card_t ;


 int BIT (int) ;
 int GPIO_ENABLE_W1TS_REG ;
 int MALLOC_CAP_DMA ;
 scalar_t__ SLC_THRESHOLD_ADDR ;
 int TEST_ESP_OK (int ) ;
 int free (int *) ;
 int * heap_caps_calloc (int,size_t const,int ) ;
 int printf (char*) ;
 int sdmmc_io_write_blocks (int *,int,scalar_t__,int *,size_t const) ;

__attribute__((used)) static void esp32_send_sip_command(sdmmc_card_t* card)
{
    printf("Test block write using CMD53\n");
    const size_t block_size = 512;
    uint8_t* data = heap_caps_calloc(1, block_size, MALLOC_CAP_DMA);
    struct sip_cmd_bootup {
            uint32_t boot_addr;
            uint32_t discard_link;
    };
    struct sip_cmd_write_reg {
            uint32_t addr;
            uint32_t val;
    };
    struct sip_hdr {
            uint8_t fc[2];
            uint16_t len;
            uint32_t cmdid;
            uint32_t seq;
    };

    struct sip_hdr* hdr = (struct sip_hdr*) data;
    size_t len;




    struct sip_cmd_write_reg *write_reg = (struct sip_cmd_write_reg*) (data + sizeof(*hdr));
    len = sizeof(*hdr) + sizeof(*write_reg);
    hdr->cmdid = 3;
    write_reg->addr = GPIO_ENABLE_W1TS_REG;
    write_reg->val = BIT(0) | BIT(2) | BIT(4);







    hdr->len = len;

    TEST_ESP_OK( sdmmc_io_write_blocks(card, 1, SLC_THRESHOLD_ADDR - len, data, block_size) );
    free(data);
}
