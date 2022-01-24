#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  size_t uint16_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_3__ {size_t cid; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  instance_size; scalar_t__ status; int /*<<< orphan*/ * param_key; int /*<<< orphan*/ * instance_ptr; } ;
typedef  TYPE_1__ characteristic_descriptor_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_ERR_NOT_SUPPORTED ; 
 scalar_t__ ESP_OK ; 
 scalar_t__ PARAM_TYPE_ASCII ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__** active_cid_table ; 
 size_t active_cid_table_size ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (size_t,char*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

esp_err_t FUNC6(uint16_t cid, void *value)
{
    FUNC1(active_cid_table != NULL);
    FUNC0((value != NULL), ESP_ERR_INVALID_ARG, "incorrect value pointer.");
    FUNC0((cid < active_cid_table_size), ESP_ERR_INVALID_ARG, "incorrect cid to read.");
    characteristic_descriptor_t* cid_info = active_cid_table[cid];
    FUNC0((cid_info->instance_ptr != NULL), ESP_ERR_INVALID_STATE, "incorrect cid table instance_pointer.");
    FUNC0((cid_info->param_key != NULL), ESP_ERR_INVALID_STATE, "incorrect cid table or not initialized.");
    FUNC0((cid_info->cid == cid), ESP_ERR_INVALID_STATE, "incorrect cid table or not initialized.");

    // Set the data pointer for get request to value instance
    uint8_t* value_ptr = (uint8_t*)cid_info->instance_ptr;
    uint8_t type = 0;
    FUNC4((void*)value_ptr, 0, cid_info->instance_size); // Clear value instance first

    // Send Modbus request to read cid correspond registers
    esp_err_t error = FUNC2(cid, (char*)cid_info->param_key, value_ptr, &type);
    FUNC0((type <= PARAM_TYPE_ASCII), ESP_ERR_NOT_SUPPORTED, "returned data type is not supported (%u)", type);
    cid_info->status = error; // Keep last read status of the cid in the information table
    if (error == ESP_OK) {
        // Copy the value to param
        FUNC3((void*)value, (void*)value_ptr, cid_info->instance_size);
        cid_info->timestamp = FUNC5(); // Set timestamp of last access to cid
    }
    return error;
}