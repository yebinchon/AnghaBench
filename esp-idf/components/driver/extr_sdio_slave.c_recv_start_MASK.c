#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int /*<<< orphan*/  buf_desc_t ;
struct TYPE_7__ {int tx_done; } ;
struct TYPE_6__ {int start; scalar_t__ addr; } ;
struct TYPE_5__ {int slc0_tx_rst; } ;
struct TYPE_8__ {TYPE_3__ slc0_int_ena; TYPE_2__ slc0_tx_link; TYPE_1__ conf0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_4__ SLC ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 

__attribute__((used)) static esp_err_t FUNC4(void)
{
    SLC.conf0.slc0_tx_rst = 1;
    SLC.conf0.slc0_tx_rst = 0;

    FUNC1();
    buf_desc_t *desc = FUNC3();
    if (!desc) {
        FUNC0(TAG, "recv: restart without desc");
        FUNC2();
        return ESP_OK; // if no buffer loaded, return directly.
    }
    //the counter is handled when add/flush/reset
    SLC.slc0_tx_link.addr = (uint32_t)desc;
    SLC.slc0_tx_link.start = 1;
    FUNC2();

    SLC.slc0_int_ena.tx_done = 1;
    return ESP_OK;
}