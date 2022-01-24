#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spi_flash_mmap_handle_t ;
struct TYPE_4__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ esp_partition_t ;
typedef  int /*<<< orphan*/  esp_ota_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  SPI_FLASH_MMAP_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(esp_ota_handle_t update_handle, const esp_partition_t *curr_app)
{
    const void *partition_bin = NULL;
    spi_flash_mmap_handle_t  data_map;
    FUNC0(FUNC2(curr_app, 0, curr_app->size, SPI_FLASH_MMAP_DATA, &partition_bin, &data_map));
    FUNC0(FUNC1(update_handle, (const void *)partition_bin, curr_app->size));
    FUNC3(data_map);
}