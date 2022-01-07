
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int sdmmc_card_t ;


 size_t DR_REG_SLCHOST_BASE ;
 int ESP_LOG_BUFFER_HEX (int ,int *,size_t) ;
 int MALLOC_CAP_DMA ;
 size_t SLCHOST_CONF_W0 ;
 int TAG ;
 int TEST_ASSERT_EQUAL_UINT8_ARRAY (int *,int *,size_t) ;
 int TEST_ESP_OK (int ) ;
 int free (int *) ;
 int * heap_caps_malloc (int,int ) ;
 int printf (char*) ;
 int rand () ;
 int sdmmc_io_read_byte (int *,int,size_t const,int *) ;
 int sdmmc_io_read_bytes (int *,int,size_t const,int *,size_t) ;
 int sdmmc_io_write_bytes (int *,int,size_t const,int *,size_t) ;

__attribute__((used)) static void test_cmd53_read_write_multiple_bytes(sdmmc_card_t* card, size_t n_bytes)
{
    printf("Write multiple bytes using CMD53\n");
    const size_t scratch_area_reg = SLCHOST_CONF_W0 - DR_REG_SLCHOST_BASE;

    uint8_t* src = heap_caps_malloc(512, MALLOC_CAP_DMA);
    uint32_t* src_32 = (uint32_t*) src;

    for (size_t i = 0; i < (n_bytes + 3) / 4; ++i) {
        src_32[i] = rand();
    }

    TEST_ESP_OK(sdmmc_io_write_bytes(card, 1, scratch_area_reg, src, n_bytes));
    ESP_LOG_BUFFER_HEX(TAG, src, n_bytes);

    printf("Read back using CMD52\n");
    uint8_t* dst = heap_caps_malloc(512, MALLOC_CAP_DMA);
    for (size_t i = 0; i < n_bytes; ++i) {
        TEST_ESP_OK(sdmmc_io_read_byte(card, 1, scratch_area_reg + i, &dst[i]));
    }
    ESP_LOG_BUFFER_HEX(TAG, dst, n_bytes);
    TEST_ASSERT_EQUAL_UINT8_ARRAY(src, dst, n_bytes);

    printf("Read back using CMD53\n");
    TEST_ESP_OK(sdmmc_io_read_bytes(card, 1, scratch_area_reg, dst, n_bytes));
    ESP_LOG_BUFFER_HEX(TAG, dst, n_bytes);
    TEST_ASSERT_EQUAL_UINT8_ARRAY(src, dst, n_bytes);

    free(src);
    free(dst);
}
