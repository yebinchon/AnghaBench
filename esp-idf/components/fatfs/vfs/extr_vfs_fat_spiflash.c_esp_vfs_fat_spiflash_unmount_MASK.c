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
typedef  int /*<<< orphan*/  wl_handle_t ;
typedef  scalar_t__ esp_err_t ;
typedef  int BYTE ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_STATE ; 
 scalar_t__ ESP_OK ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

esp_err_t FUNC6(const char *base_path, wl_handle_t wl_handle)
{
    BYTE pdrv = FUNC3(wl_handle);
    if (pdrv == 0xff) {
        return ESP_ERR_INVALID_STATE;
    }
    char drv[3] = {(char)('0' + pdrv), ':', 0};

    FUNC1(0, drv, 0);
    FUNC4(pdrv);
    FUNC2(wl_handle);
    // release partition driver
    esp_err_t err_drv = FUNC5(wl_handle);
    esp_err_t err = FUNC0(base_path);
    if (err == ESP_OK) err = err_drv;
    return err;
}