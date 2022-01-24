#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int current_addr_valid; int /*<<< orphan*/  current_addr; scalar_t__ current_addr_type; } ;
struct TYPE_8__ {TYPE_2__ ble; } ;
typedef  TYPE_3__ tBTM_SEC_DEV_REC ;
typedef  scalar_t__ UINT8 ;
struct TYPE_6__ {int /*<<< orphan*/  scan_activity; } ;
struct TYPE_9__ {TYPE_1__ ble_ctr_cb; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ADDR_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  btm_ble_resolve_random_addr_on_adv ; 
 TYPE_5__ btm_cb ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9 (UINT8 *p_data)
{
    BD_ADDR             bda;
    UINT8               evt_type = 0, *p = p_data;
    UINT8               addr_type = 0;
    UINT8               num_reports;
    UINT8               data_len;
#if (defined BLE_PRIVACY_SPT && BLE_PRIVACY_SPT == TRUE)
    BOOLEAN             match = FALSE;
    BD_ADDR             temp_bda;
    UINT8               temp_addr_type = 0;
#endif

    /* Only process the results if the inquiry is still active */
    if (!FUNC1(btm_cb.ble_ctr_cb.scan_activity)) {
        return;
    }

    /* Extract the number of reports in this event. */
    FUNC3(num_reports, p);

    while (num_reports--) {
        /* Extract inquiry results */
        FUNC3    (evt_type, p);
        FUNC3    (addr_type, p);
        FUNC2   (bda, p);
        //BTM_TRACE_ERROR("btm_ble_process_adv_pkt:bda= %0x:%0x:%0x:%0x:%0x:%0x\n",
        //                              bda[0],bda[1],bda[2],bda[3],bda[4],bda[5]);
#if (defined BLE_PRIVACY_SPT && BLE_PRIVACY_SPT == TRUE)
        temp_addr_type = addr_type;
        memcpy(temp_bda, bda, BD_ADDR_LEN);

        /* map address to security record */
        match = btm_identity_addr_to_random_pseudo(bda, &addr_type, FALSE);

        // BTM_TRACE_ERROR("btm_ble_process_adv_pkt:bda= %0x:%0x:%0x:%0x:%0x:%0x\n",
        //                             bda[0],bda[1],bda[2],bda[3],bda[4],bda[5]);
        /* always do RRA resolution on host */
        if (!match && BTM_BLE_IS_RESOLVE_BDA(bda)) {
            btm_ble_resolve_random_addr(bda, btm_ble_resolve_random_addr_on_adv, p_data);
        } else
#endif
        FUNC4(bda, addr_type, evt_type, p);
#if (defined BLE_PRIVACY_SPT && BLE_PRIVACY_SPT == TRUE)
        //save current adv addr information if p_dev_rec!= NULL
        tBTM_SEC_DEV_REC *p_dev_rec = btm_find_dev (bda);
        if(p_dev_rec) {
            p_dev_rec->ble.current_addr_type = temp_addr_type;
            memcpy(p_dev_rec->ble.current_addr, temp_bda, BD_ADDR_LEN);
            p_dev_rec->ble.current_addr_valid = true;
        }
#endif
        FUNC3(data_len, p);

        /* Advance to the next event data_len + rssi byte */
        p += data_len + 1;
    }
}