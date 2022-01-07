
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int width; } ;
typedef TYPE_1__ sdmmc_slot_config_t ;
struct TYPE_8__ {int slot; int max_freq_khz; int flags; } ;
typedef TYPE_2__ sdmmc_host_t ;
typedef int sdmmc_card_t ;


 int MALLOC_CAP_DMA ;
 TYPE_2__ SDMMC_HOST_DEFAULT () ;
 int SDMMC_HOST_FLAG_1BIT ;
 int SDMMC_HOST_FLAG_8BIT ;
 int SDMMC_HOST_FLAG_DDR ;
 TYPE_1__ SDMMC_SLOT_CONFIG_DEFAULT () ;
 int TEST_ASSERT_NOT_NULL (int *) ;
 int TEST_ESP_OK (int ) ;
 int assert (int ) ;
 int free (int *) ;
 int * heap_caps_malloc (int,int ) ;
 int * malloc (int) ;
 int sd_test_board_power_off () ;
 int sd_test_board_power_on () ;
 int sdmmc_card_init (TYPE_2__*,int *) ;
 int sdmmc_card_print_info (int ,int *) ;
 int sdmmc_host_deinit () ;
 int sdmmc_host_init () ;
 int sdmmc_host_init_slot (int,TYPE_1__*) ;
 int sdmmc_read_sectors (int *,int *,int ,int) ;
 int stdout ;

__attribute__((used)) static void probe_sd(int slot, int width, int freq_khz, int ddr)
{
    sd_test_board_power_on();
    sdmmc_host_t config = SDMMC_HOST_DEFAULT();
    config.slot = slot;
    config.max_freq_khz = freq_khz;
    sdmmc_slot_config_t slot_config = SDMMC_SLOT_CONFIG_DEFAULT();
    if (width == 1) {
        config.flags = SDMMC_HOST_FLAG_1BIT;
        slot_config.width = 1;
    } else if (width == 4) {
        config.flags &= ~SDMMC_HOST_FLAG_8BIT;
        slot_config.width = 4;
    } else {
        assert(!ddr && "host driver does not support 8-line DDR mode yet");
    }
    if (!ddr) {
        config.flags &= ~SDMMC_HOST_FLAG_DDR;
    }
    TEST_ESP_OK(sdmmc_host_init());
    TEST_ESP_OK(sdmmc_host_init_slot(slot, &slot_config));
    sdmmc_card_t* card = malloc(sizeof(sdmmc_card_t));
    TEST_ASSERT_NOT_NULL(card);
    TEST_ESP_OK(sdmmc_card_init(&config, card));
    sdmmc_card_print_info(stdout, card);
    uint8_t* buffer = heap_caps_malloc(512, MALLOC_CAP_DMA);
    TEST_ESP_OK(sdmmc_read_sectors(card, buffer, 0, 1));
    free(buffer);
    TEST_ESP_OK(sdmmc_host_deinit());
    free(card);
    sd_test_board_power_off();
}
