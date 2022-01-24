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
typedef  int /*<<< orphan*/  sdio_slave_buf_handle_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ ESP_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static esp_err_t FUNC6(void)
{
    esp_err_t ret;
    FUNC5();
    ret = FUNC2();
    if (ret != ESP_OK) return ret;
    ret = FUNC4();
    if (ret != ESP_OK) return ret;

    //Since the buffer will not be sent any more, we return them back to receving driver
    while(1) {
        sdio_slave_buf_handle_t handle;
        ret = FUNC3(&handle, 0);
        if (ret != ESP_OK) break;
        ret = FUNC1(handle);
        FUNC0(ret);
    }
    return ESP_OK;
}