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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 scalar_t__ FUNC2 (void**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,size_t,void*,int /*<<< orphan*/ ) ; 

esp_err_t FUNC4(uint8_t* addr, size_t len)
{
    uint32_t timestamp = FUNC1();
    uint32_t ret_stamp;

    esp_err_t err = FUNC3(addr, len, (void*)timestamp, portMAX_DELAY);
    if (err != ESP_OK) return err;
    err = FUNC2((void**)&ret_stamp, portMAX_DELAY);
    if (err != ESP_OK) return err;
    FUNC0(ret_stamp == timestamp, "already sent without return before", ESP_ERR_INVALID_STATE);

    return ESP_OK;
}