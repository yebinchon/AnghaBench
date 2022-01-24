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
typedef  scalar_t__ wl_handle_t ;
typedef  scalar_t__ esp_err_t ;
typedef  int UINT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  DRESULT ;
typedef  size_t BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  RES_ERROR ; 
 int /*<<< orphan*/  RES_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__* ff_wl_handles ; 
 scalar_t__ FUNC3 (scalar_t__,int,int) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int,size_t const*,int) ; 

DRESULT FUNC6 (BYTE pdrv, const BYTE *buff, DWORD sector, UINT count)
{
    FUNC1(TAG, "ff_wl_write - pdrv=%i, sector=%i, count=%i\n", (unsigned int)pdrv, (unsigned int)sector, (unsigned int)count);
    wl_handle_t wl_handle = ff_wl_handles[pdrv];
    FUNC2(wl_handle + 1);
    esp_err_t err = FUNC3(wl_handle, sector * FUNC4(wl_handle), count * FUNC4(wl_handle));
    if (err != ESP_OK) {
        FUNC0(TAG, "wl_erase_range failed (%d)", err);
        return RES_ERROR;
    }
    err = FUNC5(wl_handle, sector * FUNC4(wl_handle), buff, count * FUNC4(wl_handle));
    if (err != ESP_OK) {
        FUNC0(TAG, "wl_write failed (%d)", err);
        return RES_ERROR;
    }
    return RES_OK;
}