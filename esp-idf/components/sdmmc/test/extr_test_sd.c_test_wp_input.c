
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int sdmmc_host_t ;
typedef int sdmmc_card_t ;


 int BIT (int) ;
 int ESP_ERR_INVALID_STATE ;
 int GPIO_ENABLE_W1TS_REG ;
 int GPIO_OUT_W1TC_REG ;
 int GPIO_OUT_W1TS_REG ;
 int MALLOC_CAP_DMA ;
 int REG_WRITE (int ,int ) ;
 int SIG_GPIO_OUT_IDX ;
 int TEST_ASSERT_NOT_NULL (int *) ;
 int TEST_ESP_ERR (int ,int ) ;
 int TEST_ESP_OK (int ) ;
 int free (int *) ;
 int gpio_matrix_out (int,int ,int,int) ;
 int * heap_caps_calloc (int,int,int ) ;
 int * malloc (int) ;
 int sdmmc_card_init (int const*,int *) ;
 int sdmmc_read_sectors (int *,int **,int ,int) ;
 int sdmmc_write_sectors (int *,int **,int ,int) ;
 int usleep (int) ;

__attribute__((used)) static void test_wp_input(int gpio_wp_num, const sdmmc_host_t* config)
{
    sdmmc_card_t* card = malloc(sizeof(sdmmc_card_t));
    TEST_ASSERT_NOT_NULL(card);




    gpio_matrix_out(gpio_wp_num, SIG_GPIO_OUT_IDX, 0, 0);
    REG_WRITE(GPIO_ENABLE_W1TS_REG, BIT(gpio_wp_num));


    REG_WRITE(GPIO_OUT_W1TC_REG, BIT(gpio_wp_num));
    TEST_ESP_OK(sdmmc_card_init(config, card));

    uint32_t* data = heap_caps_calloc(1, 512, MALLOC_CAP_DMA);


    REG_WRITE(GPIO_OUT_W1TS_REG, BIT(gpio_wp_num));
    usleep(1000);
    TEST_ESP_OK(sdmmc_write_sectors(card, &data, 0, 1));


    REG_WRITE(GPIO_OUT_W1TC_REG, BIT(gpio_wp_num));
    usleep(1000);
    TEST_ESP_ERR(ESP_ERR_INVALID_STATE, sdmmc_write_sectors(card, &data, 0, 1));

    TEST_ESP_OK(sdmmc_read_sectors(card, &data, 0, 1));

    free(data);
    free(card);
}
