#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct ble_hs_adv_fields {scalar_t__ flags; int num_uuids16; int num_uuids32; int num_uuids128; int name_len; int num_public_tgt_addrs; int /*<<< orphan*/  mfg_data_len; int /*<<< orphan*/ * mfg_data; int /*<<< orphan*/  uri_len; int /*<<< orphan*/ * uri; int /*<<< orphan*/  svc_data_uuid128_len; int /*<<< orphan*/ * svc_data_uuid128; int /*<<< orphan*/  svc_data_uuid32_len; int /*<<< orphan*/ * svc_data_uuid32; int /*<<< orphan*/  adv_itvl; scalar_t__ adv_itvl_is_present; int /*<<< orphan*/  appearance; scalar_t__ appearance_is_present; int /*<<< orphan*/ * public_tgt_addr; int /*<<< orphan*/  svc_data_uuid16_len; int /*<<< orphan*/ * svc_data_uuid16; int /*<<< orphan*/ * slave_itvl_range; int /*<<< orphan*/  tx_pwr_lvl; scalar_t__ tx_pwr_lvl_is_present; scalar_t__ name_is_complete; int /*<<< orphan*/ * name; TYPE_3__* uuids128; scalar_t__ uuids128_is_complete; TYPE_2__* uuids32; scalar_t__ uuids32_is_complete; TYPE_1__* uuids16; scalar_t__ uuids16_is_complete; } ;
struct TYPE_6__ {int /*<<< orphan*/  u; } ;
struct TYPE_5__ {int /*<<< orphan*/  u; } ;
struct TYPE_4__ {int /*<<< orphan*/  u; } ;

/* Variables and functions */
 int BLE_HS_ADV_MAX_SZ ; 
 int /*<<< orphan*/  BLE_HS_ADV_PUBLIC_TGT_ADDR_ENTRY_LEN ; 
 int /*<<< orphan*/  BLE_HS_ADV_SLAVE_ITVL_RANGE_LEN ; 
 int /*<<< orphan*/  DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(const struct ble_hs_adv_fields *fields)
{
    char s[BLE_HS_ADV_MAX_SZ];
    const uint8_t *u8p;
    int i;

    if (fields->flags != 0) {
        FUNC0(DEBUG, "    flags=0x%02x\n", fields->flags);
    }

    if (fields->uuids16 != NULL) {
        FUNC0(DEBUG, "    uuids16(%scomplete)=",
                    fields->uuids16_is_complete ? "" : "in");
        for (i = 0; i < fields->num_uuids16; i++) {
            FUNC5(&fields->uuids16[i].u);
            FUNC0(DEBUG, " ");
        }
        FUNC0(DEBUG, "\n");
    }

    if (fields->uuids32 != NULL) {
        FUNC0(DEBUG, "    uuids32(%scomplete)=",
                    fields->uuids32_is_complete ? "" : "in");
        for (i = 0; i < fields->num_uuids32; i++) {
            FUNC5(&fields->uuids32[i].u);
            FUNC0(DEBUG, " ");
        }
        FUNC0(DEBUG, "\n");
    }

    if (fields->uuids128 != NULL) {
        FUNC0(DEBUG, "    uuids128(%scomplete)=",
                    fields->uuids128_is_complete ? "" : "in");
        for (i = 0; i < fields->num_uuids128; i++) {
            FUNC5(&fields->uuids128[i].u);
            FUNC0(DEBUG, " ");
        }
        FUNC0(DEBUG, "\n");
    }

    if (fields->name != NULL) {
        FUNC2(fields->name_len < sizeof s - 1);
        FUNC3(s, fields->name, fields->name_len);
        s[fields->name_len] = '\0';
        FUNC0(DEBUG, "    name(%scomplete)=%s\n",
                    fields->name_is_complete ? "" : "in", s);
    }

    if (fields->tx_pwr_lvl_is_present) {
        FUNC0(DEBUG, "    tx_pwr_lvl=%d\n", fields->tx_pwr_lvl);
    }

    if (fields->slave_itvl_range != NULL) {
        FUNC0(DEBUG, "    slave_itvl_range=");
        FUNC4(fields->slave_itvl_range, BLE_HS_ADV_SLAVE_ITVL_RANGE_LEN);
        FUNC0(DEBUG, "\n");
    }

    if (fields->svc_data_uuid16 != NULL) {
        FUNC0(DEBUG, "    svc_data_uuid16=");
        FUNC4(fields->svc_data_uuid16, fields->svc_data_uuid16_len);
        FUNC0(DEBUG, "\n");
    }

    if (fields->public_tgt_addr != NULL) {
        FUNC0(DEBUG, "    public_tgt_addr=");
        u8p = fields->public_tgt_addr;
        for (i = 0; i < fields->num_public_tgt_addrs; i++) {
            FUNC0(DEBUG, "public_tgt_addr=%s ", FUNC1(u8p));
            u8p += BLE_HS_ADV_PUBLIC_TGT_ADDR_ENTRY_LEN;
        }
        FUNC0(DEBUG, "\n");
    }

    if (fields->appearance_is_present) {
        FUNC0(DEBUG, "    appearance=0x%04x\n", fields->appearance);
    }

    if (fields->adv_itvl_is_present) {
        FUNC0(DEBUG, "    adv_itvl=0x%04x\n", fields->adv_itvl);
    }

    if (fields->svc_data_uuid32 != NULL) {
        FUNC0(DEBUG, "    svc_data_uuid32=");
        FUNC4(fields->svc_data_uuid32, fields->svc_data_uuid32_len);
        FUNC0(DEBUG, "\n");
    }

    if (fields->svc_data_uuid128 != NULL) {
        FUNC0(DEBUG, "    svc_data_uuid128=");
        FUNC4(fields->svc_data_uuid128, fields->svc_data_uuid128_len);
        FUNC0(DEBUG, "\n");
    }

    if (fields->uri != NULL) {
        FUNC0(DEBUG, "    uri=");
        FUNC4(fields->uri, fields->uri_len);
        FUNC0(DEBUG, "\n");
    }

    if (fields->mfg_data != NULL) {
        FUNC0(DEBUG, "    mfg_data=");
        FUNC4(fields->mfg_data, fields->mfg_data_len);
        FUNC0(DEBUG, "\n");
    }
}