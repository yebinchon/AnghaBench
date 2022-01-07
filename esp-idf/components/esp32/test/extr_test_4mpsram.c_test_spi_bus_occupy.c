
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ spi_host_device_t ;


 int ESP_LOGI (int ,char*) ;
 scalar_t__ HSPI_HOST ;
 int TAG ;
 int TEST_ASSERT (int) ;
 int TEST_ASSERT_FALSE (int) ;
 scalar_t__ VSPI_HOST ;
 int spicommon_periph_claim (scalar_t__,char*) ;
 int test_psram_content () ;

__attribute__((used)) static void test_spi_bus_occupy(spi_host_device_t expected_occupied_host)
{
    bool claim_hspi = spicommon_periph_claim(HSPI_HOST, "ut-hspi");
    if (claim_hspi) ESP_LOGI(TAG, "HSPI claimed.");

    bool claim_vspi = spicommon_periph_claim(VSPI_HOST, "ut-vspi");
    if (claim_vspi) ESP_LOGI(TAG, "VSPI claimed.");

    if (expected_occupied_host == HSPI_HOST) {
        TEST_ASSERT_FALSE(claim_hspi);
        TEST_ASSERT(claim_vspi);
    } else if (expected_occupied_host == VSPI_HOST) {
        TEST_ASSERT_FALSE(claim_vspi);
        TEST_ASSERT(claim_hspi);
    } else {
        TEST_ASSERT(claim_hspi);
        TEST_ASSERT(claim_vspi);
    }




}
