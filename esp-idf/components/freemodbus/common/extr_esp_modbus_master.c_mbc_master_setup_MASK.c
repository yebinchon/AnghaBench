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
struct TYPE_2__ {scalar_t__ (* setup ) (void*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_1__* master_interface_ptr ; 
 scalar_t__ FUNC2 (void*) ; 

esp_err_t FUNC3(void* comm_info)
{
    esp_err_t error = ESP_OK;
    FUNC0((master_interface_ptr != NULL),
                    ESP_ERR_INVALID_STATE,
                    "Master interface is not correctly initialized.");
    FUNC0((master_interface_ptr->setup != NULL),
                    ESP_ERR_INVALID_STATE,
                    "Master interface is not correctly initialized.");
    error = master_interface_ptr->setup(comm_info);
    FUNC0((error == ESP_OK), 
                    error,
                    "SERIAL master setup failure error=(0x%x) (%s).",
                    error, FUNC1(error));
    return ESP_OK;
}