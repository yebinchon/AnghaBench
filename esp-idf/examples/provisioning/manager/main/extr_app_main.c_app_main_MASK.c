#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wifi_prov_security_t ;
struct TYPE_3__ {int /*<<< orphan*/  scheme_event_handler; int /*<<< orphan*/  scheme; } ;
typedef  TYPE_1__ wifi_prov_mgr_config_t ;
typedef  int /*<<< orphan*/  wifi_init_config_t ;
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  service_name ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ ESP_ERR_NVS_NEW_VERSION_FOUND ; 
 scalar_t__ ESP_ERR_NVS_NO_FREE_PAGES ; 
 int /*<<< orphan*/  ESP_EVENT_ANY_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  IP_EVENT ; 
 int /*<<< orphan*/  IP_EVENT_STA_GOT_IP ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  WIFI_CONNECTED_EVENT ; 
 int /*<<< orphan*/  WIFI_EVENT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  WIFI_PROV_EVENT ; 
 int /*<<< orphan*/  WIFI_PROV_SCHEME_BLE_EVENT_HANDLER_FREE_BTDM ; 
 int /*<<< orphan*/  WIFI_PROV_SECURITY_1 ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  event_handler ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  wifi_event_group ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (TYPE_1__) ; 
 scalar_t__ FUNC15 (int*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,char const*,char*,char const*) ; 
 int /*<<< orphan*/  wifi_prov_scheme_ble ; 
 int /*<<< orphan*/  FUNC17 (int*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

void FUNC20(void)
{
    /* Initialize NVS partition */
    esp_err_t ret = FUNC10();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        /* NVS partition was truncated
         * and needs to be erased */
        FUNC0(FUNC9());

        /* Retry nvs_flash_init */
        FUNC0(FUNC10());
    }

    /* Initialize TCP/IP */
    FUNC6();

    /* Initialize the event loop */
    FUNC0(FUNC4());
    wifi_event_group = FUNC18();

    /* Register our event handler for Wi-Fi, IP and Provisioning related events */
    FUNC0(FUNC3(WIFI_PROV_EVENT, ESP_EVENT_ANY_ID, &event_handler, NULL));
    FUNC0(FUNC3(WIFI_EVENT, ESP_EVENT_ANY_ID, &event_handler, NULL));
    FUNC0(FUNC3(IP_EVENT, IP_EVENT_STA_GOT_IP, &event_handler, NULL));

    /* Initialize Wi-Fi including netif with default config */
    FUNC5();
    wifi_init_config_t cfg = FUNC2();
    FUNC0(FUNC7(&cfg));

    /* Configuration for the provisioning manager */
    wifi_prov_mgr_config_t config = {
        /* What is the Provisioning Scheme that we want ?
         * wifi_prov_scheme_softap or wifi_prov_scheme_ble */
        .scheme = wifi_prov_scheme_ble,

        /* Any default scheme specific event handler that you would
         * like to choose. Since our example application requires
         * neither BT nor BLE, we can choose to release the associated
         * memory once provisioning is complete, or not needed
         * (in case when device is already provisioned). Choosing
         * appropriate scheme specific event handler allows the manager
         * to take care of this automatically. This can be set to
         * WIFI_PROV_EVENT_HANDLER_NONE when using wifi_prov_scheme_softap*/
        .scheme_event_handler = WIFI_PROV_SCHEME_BLE_EVENT_HANDLER_FREE_BTDM
    };

    /* Initialize provisioning manager with the
     * configuration parameters set above */
    FUNC0(FUNC14(config));

    bool provisioned = false;
    /* Let's find out if the device is provisioned */
    FUNC0(FUNC15(&provisioned));

    /* If device is not yet provisioned start provisioning service */
    if (!provisioned) {
        FUNC1(TAG, "Starting provisioning");

        /* What is the Device Service Name that we want
         * This translates to :
         *     - Wi-Fi SSID when scheme is wifi_prov_scheme_softap
         *     - device name when scheme is wifi_prov_scheme_ble
         */
        char service_name[12];
        FUNC8(service_name, sizeof(service_name));

        /* What is the security level that we want (0 or 1):
         *      - WIFI_PROV_SECURITY_0 is simply plain text communication.
         *      - WIFI_PROV_SECURITY_1 is secure communication which consists of secure handshake
         *          using X25519 key exchange and proof of possession (pop) and AES-CTR
         *          for encryption/decryption of messages.
         */
        wifi_prov_security_t security = WIFI_PROV_SECURITY_1;

        /* Do we want a proof-of-possession (ignored if Security 0 is selected):
         *      - this should be a string with length > 0
         *      - NULL if not used
         */
        const char *pop = "abcd1234";

        /* What is the service key (could be NULL)
         * This translates to :
         *     - Wi-Fi password when scheme is wifi_prov_scheme_softap
         *     - simply ignored when scheme is wifi_prov_scheme_ble
         */
        const char *service_key = NULL;

        /* This step is only useful when scheme is wifi_prov_scheme_ble. This will
         * set a custom 128 bit UUID which will be included in the BLE advertisement
         * and will correspond to the primary GATT service that provides provisioning
         * endpoints as GATT characteristics. Each GATT characteristic will be
         * formed using the primary service UUID as base, with different auto assigned
         * 12th and 13th bytes (assume counting starts from 0th byte). The client side
         * applications must identify the endpoints by reading the User Characteristic
         * Description descriptor (0x2901) for each characteristic, which contains the
         * endpoint name of the characteristic */
        uint8_t custom_service_uuid[] = {
            /* LSB <---------------------------------------
             * ---------------------------------------> MSB */
            0x21, 0x43, 0x65, 0x87, 0x09, 0xba, 0xdc, 0xfe,
            0xef, 0xcd, 0xab, 0x90, 0x78, 0x56, 0x34, 0x12
        };
        FUNC17(custom_service_uuid);

        /* Start provisioning service */
        FUNC0(FUNC16(security, pop, service_name, service_key));

        /* Uncomment the following to wait for the provisioning to finish and then release
         * the resources of the manager. Since in this case de-initialization is triggered
         * by the default event loop handler, we don't need to call the following */
        // wifi_prov_mgr_wait();
        // wifi_prov_mgr_deinit();
    } else {
        FUNC1(TAG, "Already provisioned, starting Wi-Fi STA");

        /* We don't need the manager as device is already provisioned,
         * so let's release it's resources */
        FUNC13();

        /* Start Wi-Fi station */
        FUNC12();
    }

    /* Wait for Wi-Fi connection */
    FUNC19(wifi_event_group, WIFI_CONNECTED_EVENT, false, true, portMAX_DELAY);

    /* Start main application now */
    while (1) {
        FUNC1(TAG, "Hello World!");
        FUNC11(1000 / portTICK_PERIOD_MS);
    }
}