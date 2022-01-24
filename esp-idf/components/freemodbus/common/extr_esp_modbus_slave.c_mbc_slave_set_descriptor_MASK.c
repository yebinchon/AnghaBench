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
typedef  int /*<<< orphan*/  mb_register_area_descriptor_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_2__ {scalar_t__ (* set_descriptor ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* slave_interface_ptr ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

esp_err_t FUNC2(mb_register_area_descriptor_t descr_data)
{
    esp_err_t error = ESP_OK;
    FUNC0((slave_interface_ptr != NULL),
                    ESP_ERR_INVALID_STATE,
                    "Slave interface is not correctly initialized.");
    FUNC0((slave_interface_ptr->set_descriptor != NULL), 
                    ESP_ERR_INVALID_STATE,
                    "Slave interface is not correctly initialized.");
    error = slave_interface_ptr->set_descriptor(descr_data);
    FUNC0((error == ESP_OK), 
                    ESP_ERR_INVALID_STATE, 
                    "SERIAL slave set descriptor failure error=(0x%x).", error);
    return error;
}