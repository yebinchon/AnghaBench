#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int* uint32_t ;
typedef  int /*<<< orphan*/  mac ;
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_EFUSE_MAC_FACTORY ; 
 int /*<<< orphan*/  ESP_EFUSE_MAC_FACTORY_CRC ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC12 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC13(void)
{
    FUNC10();
    FUNC9();

    uint8_t mac[6];

    FUNC0(TAG, "1. Read MAC address");
    FUNC12(mac, 0, sizeof(mac));
    FUNC5(FUNC8(ESP_EFUSE_MAC_FACTORY, &mac, sizeof(mac) * 8));
    FUNC2(sizeof(mac) * 8, FUNC7(ESP_EFUSE_MAC_FACTORY));
    FUNC0(TAG, "MAC: %02x:%02x:%02x:%02x:%02x:%02x", mac[0], mac[1], mac[2], mac[3], mac[4], mac[5]);

#if CONFIG_IDF_TARGET_ESP32
    ESP_LOGI(TAG, "2. Check CRC by MAC");
    uint8_t crc;
    TEST_ESP_OK(esp_efuse_read_field_blob(ESP_EFUSE_MAC_FACTORY_CRC, &crc, 8));
    TEST_ASSERT_EQUAL_HEX8(crc, esp_crc8(mac, sizeof(mac)));
#endif // CONFIG_IDF_TARGET_ESP32

    FUNC0(TAG, "3. Test check args");
    uint32_t test_var;
    FUNC4(ESP_ERR_INVALID_ARG, FUNC8(ESP_EFUSE_MAC_FACTORY, NULL, 1));
    FUNC4(ESP_ERR_INVALID_ARG, FUNC8(ESP_EFUSE_MAC_FACTORY, &test_var, 0));

    uint8_t half_byte;
    FUNC5(FUNC8(ESP_EFUSE_MAC_FACTORY, &half_byte, 4));
    FUNC1(mac[0]&0x0F, half_byte);

    uint8_t buff[7] = {0x59};
    FUNC5(FUNC8(ESP_EFUSE_MAC_FACTORY, &buff, sizeof(buff) * 8));
    FUNC3(FUNC11(mac, buff, sizeof(mac)) == 0, "Operation read blob is not success");
    FUNC1(0, buff[6]);
}