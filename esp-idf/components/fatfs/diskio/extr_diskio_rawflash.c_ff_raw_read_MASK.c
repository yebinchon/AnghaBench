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
typedef  int /*<<< orphan*/  esp_partition_t ;
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
 int SPI_FLASH_SEC_SIZE ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int,size_t*,int) ; 
 int /*<<< orphan*/ ** ff_raw_handles ; 

DRESULT FUNC4 (BYTE pdrv, BYTE *buff, DWORD sector, UINT count)
{
    FUNC1(TAG, "ff_raw_read - pdrv=%i, sector=%i, count=%in", (unsigned int)pdrv, (unsigned int)sector, (unsigned int)count);
    const esp_partition_t* part = ff_raw_handles[pdrv];
    FUNC2(part);
    esp_err_t err = FUNC3(part, sector * SPI_FLASH_SEC_SIZE, buff, count * SPI_FLASH_SEC_SIZE);
    if (err != ESP_OK) {
        FUNC0(TAG, "esp_partition_read failed (0x%x)", err);
        return RES_ERROR;
    }
    return RES_OK;
}