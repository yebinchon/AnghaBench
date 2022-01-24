#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wifi_init_config_t ;
struct TYPE_4__ {int ssid; int rssi; scalar_t__ authmode; int primary; int /*<<< orphan*/  group_cipher; int /*<<< orphan*/  pairwise_cipher; } ;
typedef  TYPE_1__ wifi_ap_record_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  esp_netif_t ;
typedef  int /*<<< orphan*/  ap_info ;

/* Variables and functions */
 int DEFAULT_SCAN_LIST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ WIFI_AUTH_WEP ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  WIFI_MODE_STA ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int*) ; 
 int /*<<< orphan*/  FUNC9 (int*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(void)
{
    FUNC6();
    FUNC0(FUNC4());
    esp_netif_t *sta_netif = FUNC5();
    FUNC3(sta_netif);

    wifi_init_config_t cfg = FUNC2();
    FUNC0(FUNC7(&cfg));

    uint16_t number = DEFAULT_SCAN_LIST_SIZE;
    wifi_ap_record_t ap_info[DEFAULT_SCAN_LIST_SIZE];
    uint16_t ap_count = 0;
    FUNC13(ap_info, 0, sizeof(ap_info));

    FUNC0(FUNC11(WIFI_MODE_STA));
    FUNC0(FUNC12());
    FUNC0(FUNC10(NULL, true));
    FUNC0(FUNC9(&number, ap_info));
    FUNC0(FUNC8(&ap_count));
    FUNC1(TAG, "Total APs scanned = %u", ap_count);
    for (int i = 0; (i < DEFAULT_SCAN_LIST_SIZE) && (i < ap_count); i++) {
        FUNC1(TAG, "SSID \t\t%s", ap_info[i].ssid);
        FUNC1(TAG, "RSSI \t\t%d", ap_info[i].rssi);
        FUNC14(ap_info[i].authmode);
        if (ap_info[i].authmode != WIFI_AUTH_WEP) {
            FUNC15(ap_info[i].pairwise_cipher, ap_info[i].group_cipher);
        }
        FUNC1(TAG, "Channel \t\t%d\n", ap_info[i].primary);
    }

}