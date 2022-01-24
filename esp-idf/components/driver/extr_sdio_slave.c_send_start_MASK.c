#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_3__ {int rx_eof; } ;
struct TYPE_4__ {TYPE_1__ slc0_int_clr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__ SLC ; 
 scalar_t__ STATE_IDLE ; 
 int /*<<< orphan*/  STATE_WAIT_FOR_START ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static esp_err_t FUNC4(void)
{
    FUNC0(FUNC1() == STATE_IDLE,
        "already started", ESP_ERR_INVALID_STATE);
    SLC.slc0_int_clr.rx_eof = 1;
    FUNC3(STATE_WAIT_FOR_START);
    FUNC2();
    return ESP_OK;
}