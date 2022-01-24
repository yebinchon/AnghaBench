#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_6__ {scalar_t__ param_key; } ;
typedef  TYPE_2__ characteristic_descriptor_t ;
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  SENSE_TRIGGER_TASK_PRIO ; 
 int /*<<< orphan*/  SENSE_TRIGGER_TASK_STACK_SIZE ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int cid_counter ; 
 TYPE_2__** cid_table ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (TYPE_2__**,int*) ; 
 scalar_t__ FUNC6 (int,void*) ; 
 int /*<<< orphan*/  trigger_operation_task ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(void)
{
    esp_err_t result = ESP_OK;

    // Initialization of device peripheral and objects
    FUNC4();

    // Get all supported modbus characteristics from modbus controller
    result = FUNC5(&cid_table[0], &cid_counter);
    FUNC2((result == ESP_OK) && (cid_counter >= 1));
    FUNC1(TAG, "Found (%u) characteristics in the table.", cid_counter);
    characteristic_descriptor_t* sid_descr_ptr = { 0 };
    float value = 0;
    esp_err_t err = ESP_OK;
    int cid_registered = 0;
    // Read all found characteristics
    for (uint16_t cid = 0; cid < cid_counter; cid++) {
        sid_descr_ptr = cid_table[cid];
        // Initially read of Modbus values and check status
        err = FUNC6(cid, (void*)&value);
        if (err == ESP_OK) {
            FUNC1(TAG, "Characteristic (%s) data = 0x%.4x read successful.",
                                                (char*)sid_descr_ptr->param_key, (unsigned int)value);
            cid_registered++;
        } else {
            FUNC0(TAG, "Characteristic (%s) read value fail, err = %d (%s).",
                                                (char*)sid_descr_ptr->param_key,
                                                (int)err,
                                                (char*)FUNC3(err));
        }
    }

    // Starts operation task to check values and trigger an event
    FUNC7(trigger_operation_task, "trigger_operation_task",
                                        SENSE_TRIGGER_TASK_STACK_SIZE, NULL, SENSE_TRIGGER_TASK_PRIO, NULL);
}