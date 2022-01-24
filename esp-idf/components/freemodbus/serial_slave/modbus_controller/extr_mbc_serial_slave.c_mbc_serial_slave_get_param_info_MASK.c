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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/ * mbs_notification_queue_handle; } ;
typedef  TYPE_1__ mb_slave_options_t ;
typedef  int /*<<< orphan*/  mb_param_info_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_4__ {TYPE_1__ opts; } ;
typedef  scalar_t__ BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_ERR_TIMEOUT ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* mbs_interface_ptr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ pdTRUE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static esp_err_t FUNC3(mb_param_info_t* reg_info, uint32_t timeout)
{
    FUNC0((mbs_interface_ptr != NULL),
                    ESP_ERR_INVALID_STATE,
                    "Slave interface is not correctly initialized.");
    mb_slave_options_t* mbs_opts = &mbs_interface_ptr->opts;
    esp_err_t err = ESP_ERR_TIMEOUT;
    FUNC0((mbs_opts->mbs_notification_queue_handle != NULL),
                ESP_ERR_INVALID_ARG, "mb queue handle is invalid.");
    FUNC0((reg_info != NULL), ESP_ERR_INVALID_ARG, "mb register information is invalid.");
    BaseType_t status = FUNC2(mbs_opts->mbs_notification_queue_handle,
                                        reg_info, FUNC1(timeout));
    if (status == pdTRUE) {
        err = ESP_OK;
    }
    return err;
}