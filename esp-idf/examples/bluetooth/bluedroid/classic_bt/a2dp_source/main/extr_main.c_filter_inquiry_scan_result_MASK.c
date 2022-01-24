#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int int8_t ;
typedef  int int32_t ;
struct TYPE_6__ {int type; scalar_t__ val; } ;
typedef  TYPE_2__ esp_bt_gap_dev_prop_t ;
struct TYPE_5__ {int num_prop; int /*<<< orphan*/  bda; TYPE_2__* prop; } ;
struct TYPE_7__ {TYPE_1__ disc_res; } ;
typedef  TYPE_3__ esp_bt_gap_cb_param_t ;

/* Variables and functions */
 int /*<<< orphan*/  APP_AV_STATE_DISCOVERED ; 
 int /*<<< orphan*/  BT_AV_TAG ; 
 int /*<<< orphan*/  ESP_BD_ADDR_LEN ; 
 int ESP_BT_COD_SRVC_RENDERING ; 
#define  ESP_BT_GAP_DEV_PROP_BDNAME 131 
#define  ESP_BT_GAP_DEV_PROP_COD 130 
#define  ESP_BT_GAP_DEV_PROP_EIR 129 
#define  ESP_BT_GAP_DEV_PROP_RSSI 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_a2d_state ; 
 int /*<<< orphan*/  s_peer_bda ; 
 scalar_t__ s_peer_bdname ; 
 scalar_t__ FUNC7 (char*,char*) ; 

__attribute__((used)) static void FUNC8(esp_bt_gap_cb_param_t *param)
{
    char bda_str[18];
    uint32_t cod = 0;
    int32_t rssi = -129; /* invalid value */
    uint8_t *eir = NULL;
    esp_bt_gap_dev_prop_t *p;

    FUNC0(BT_AV_TAG, "Scanned device: %s", FUNC1(param->disc_res.bda, bda_str, 18));
    for (int i = 0; i < param->disc_res.num_prop; i++) {
        p = param->disc_res.prop + i;
        switch (p->type) {
        case ESP_BT_GAP_DEV_PROP_COD:
            cod = *(uint32_t *)(p->val);
            FUNC0(BT_AV_TAG, "--Class of Device: 0x%x", cod);
            break;
        case ESP_BT_GAP_DEV_PROP_RSSI:
            rssi = *(int8_t *)(p->val);
            FUNC0(BT_AV_TAG, "--RSSI: %d", rssi);
            break;
        case ESP_BT_GAP_DEV_PROP_EIR:
            eir = (uint8_t *)(p->val);
            break;
        case ESP_BT_GAP_DEV_PROP_BDNAME:
        default:
            break;
        }
    }

    /* search for device with MAJOR service class as "rendering" in COD */
    if (!FUNC4(cod) ||
            !(FUNC3(cod) & ESP_BT_COD_SRVC_RENDERING)) {
        return;
    }

    /* search for device named "ESP_SPEAKER" in its extended inqury response */
    if (eir) {
        FUNC5(eir, s_peer_bdname, NULL);
        if (FUNC7((char *)s_peer_bdname, "ESP_SPEAKER") != 0) {
            return;
        }

        FUNC0(BT_AV_TAG, "Found a target device, address %s, name %s", bda_str, s_peer_bdname);
        s_a2d_state = APP_AV_STATE_DISCOVERED;
        FUNC6(s_peer_bda, param->disc_res.bda, ESP_BD_ADDR_LEN);
        FUNC0(BT_AV_TAG, "Cancel device discovery ...");
        FUNC2();
    }
}