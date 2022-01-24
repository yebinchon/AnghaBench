#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_STATE ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int s_batch_writing_mode ; 

esp_err_t FUNC3(void)
{
    if (s_batch_writing_mode == false) {
        return ESP_ERR_INVALID_STATE;
    } else {
        esp_err_t err = FUNC1();
        if (err == ESP_OK) {
            FUNC2();
        }
        FUNC0();
        return err;
    }
}