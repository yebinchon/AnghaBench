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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  mbs_event_group; int /*<<< orphan*/  mbs_notification_queue_handle; int /*<<< orphan*/  mbs_task_handle; } ;
typedef  TYPE_1__ mb_slave_options_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  scalar_t__ eMBErrorCode ;
struct TYPE_5__ {TYPE_1__ opts; } ;
typedef  int EventBits_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_OK ; 
 scalar_t__ MB_ENOERR ; 
 int MB_EVENT_STACK_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* mbs_interface_ptr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static esp_err_t FUNC8(void)
{
    FUNC0((mbs_interface_ptr != NULL),
                    ESP_ERR_INVALID_STATE,
                    "Slave interface is not correctly initialized.");
    mb_slave_options_t* mbs_opts = &mbs_interface_ptr->opts;
    eMBErrorCode mb_error = MB_ENOERR;
    // Stop polling by clearing correspondent bit in the event group
    EventBits_t flag = FUNC7(mbs_opts->mbs_event_group,
                                    (EventBits_t)MB_EVENT_STACK_STARTED);
    FUNC0((flag & MB_EVENT_STACK_STARTED),
                ESP_ERR_INVALID_STATE, "mb stack stop event failure.");
    // Disable and then destroy the Modbus stack
    mb_error = FUNC2();
    FUNC0((mb_error == MB_ENOERR), ESP_ERR_INVALID_STATE, "mb stack disable failure.");
    (void)FUNC6(mbs_opts->mbs_task_handle);
    (void)FUNC5(mbs_opts->mbs_notification_queue_handle);
    (void)FUNC4(mbs_opts->mbs_event_group);
    mb_error = FUNC1();
    FUNC0((mb_error == MB_ENOERR), ESP_ERR_INVALID_STATE,
            "mb stack close failure returned (0x%x).", (uint32_t)mb_error);
    FUNC3(mbs_interface_ptr);
    mbs_interface_ptr = NULL;
    return ESP_OK;
}