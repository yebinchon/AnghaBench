
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int width; } ;
typedef TYPE_1__ sdmmc_slot_config_t ;
struct TYPE_8__ {int slot; int flags; int max_freq_khz; } ;
typedef TYPE_2__ sdmmc_host_t ;
typedef int sdmmc_card_t ;


 int SDMMC_FREQ_HIGHSPEED ;
 TYPE_2__ SDMMC_HOST_DEFAULT () ;
 int SDMMC_HOST_FLAG_DDR ;
 TYPE_1__ SDMMC_SLOT_CONFIG_DEFAULT () ;
 int TEST_ASSERT_NOT_NULL (int *) ;
 int TEST_ESP_OK (int ) ;
 int free (int *) ;
 int * malloc (int) ;
 int read_write_test (int *) ;
 int sdmmc_card_init (TYPE_2__*,int *) ;
 int sdmmc_host_deinit () ;
 int sdmmc_host_init () ;
 int sdmmc_host_init_slot (int,TYPE_1__*) ;

void test_sd_rw_blocks(int slot, int width)
{
    sdmmc_host_t config = SDMMC_HOST_DEFAULT();
    config.max_freq_khz = SDMMC_FREQ_HIGHSPEED;
    config.slot = slot;
    sdmmc_slot_config_t slot_config = SDMMC_SLOT_CONFIG_DEFAULT();
    if (width != 0) {
        slot_config.width = width;
    }
    if (slot_config.width == 8) {
        config.flags &= ~SDMMC_HOST_FLAG_DDR;
    }
    TEST_ESP_OK(sdmmc_host_init());
    TEST_ESP_OK(sdmmc_host_init_slot(slot, &slot_config));
    sdmmc_card_t* card = malloc(sizeof(sdmmc_card_t));
    TEST_ASSERT_NOT_NULL(card);
    TEST_ESP_OK(sdmmc_card_init(&config, card));
    read_write_test(card);
    free(card);
    TEST_ESP_OK(sdmmc_host_deinit());
}
