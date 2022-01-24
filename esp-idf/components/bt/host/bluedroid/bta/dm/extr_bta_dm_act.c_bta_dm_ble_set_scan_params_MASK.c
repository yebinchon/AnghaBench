#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  scan_param_setup_cback; int /*<<< orphan*/  scan_mode; int /*<<< orphan*/  scan_window; int /*<<< orphan*/  scan_int; int /*<<< orphan*/  client_if; } ;
struct TYPE_5__ {TYPE_1__ ble_set_scan_params; } ;
typedef  TYPE_2__ tBTA_DM_MSG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(tBTA_DM_MSG *p_data)
{
    FUNC0(p_data->ble_set_scan_params.client_if,
                         p_data->ble_set_scan_params.scan_int,
                         p_data->ble_set_scan_params.scan_window,
                         p_data->ble_set_scan_params.scan_mode,
                         p_data->ble_set_scan_params.scan_param_setup_cback);
}