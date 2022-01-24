#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ esp_err_t ;
struct TYPE_2__ {scalar_t__ (* destroy ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* slave_interface_ptr ; 
 scalar_t__ FUNC1 () ; 

esp_err_t FUNC2(void)
{
    esp_err_t error = ESP_OK;
    // Is initialization done?
    FUNC0((slave_interface_ptr != NULL),
                    ESP_ERR_INVALID_STATE,
                    "Slave interface is not correctly initialized.");
    // Check if interface has been initialized
    FUNC0((slave_interface_ptr->destroy != NULL), 
                    ESP_ERR_INVALID_STATE,
                    "Slave interface is not correctly initialized.");
    // Call the slave port destroy function
    error = slave_interface_ptr->destroy();
    FUNC0((error == ESP_OK), 
                    ESP_ERR_INVALID_STATE, 
                    "SERIAL slave destroy failure error=(0x%x).", error);
    return error;
}