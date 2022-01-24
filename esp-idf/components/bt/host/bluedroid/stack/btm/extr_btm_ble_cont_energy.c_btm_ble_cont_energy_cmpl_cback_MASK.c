#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int param_len; int /*<<< orphan*/ * p_param_buf; } ;
typedef  TYPE_1__ tBTM_VSC_CMPL ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int UINT16 ;
struct TYPE_5__ {int /*<<< orphan*/  (* p_ener_cback ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__ ble_energy_info_cb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5 (tBTM_VSC_CMPL *p_params)
{
    UINT8  *p = p_params->p_param_buf;
    UINT16  len = p_params->param_len;
    UINT8  status = 0;
    UINT32 total_tx_time = 0, total_rx_time = 0, total_idle_time = 0, total_energy_used = 0;

    if (len < 17) {
        FUNC1("wrong length for btm_ble_cont_energy_cmpl_cback");
        return;
    }

    FUNC3(status, p);
    FUNC2(total_tx_time, p);
    FUNC2(total_rx_time, p);
    FUNC2(total_idle_time, p);
    FUNC2(total_energy_used, p);

    FUNC0("energy_info status=%d,tx_t=%u, rx_t=%u, ener_used=%u, idle_t=%u",
                    status, total_tx_time, total_rx_time, total_energy_used, total_idle_time);

    if (NULL != ble_energy_info_cb.p_ener_cback) {
        ble_energy_info_cb.p_ener_cback(total_tx_time, total_rx_time, total_idle_time,
                                        total_energy_used, status);
    }

    return;
}