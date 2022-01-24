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
typedef  int uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  chip_id; } ;
typedef  TYPE_1__ esp_flash_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spi_flash_common_read_status_16b_rdsr_rdsr2 ; 
 int /*<<< orphan*/  spi_flash_common_read_status_8b_rdsr2 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  spi_flash_common_write_status_16b_wrsr ; 
 int /*<<< orphan*/  spi_flash_common_write_status_8b_wrsr2 ; 

esp_err_t FUNC2(esp_flash_t *chip)
{
    if (FUNC0(chip->chip_id)) {
        const uint32_t qe = 1<<9;
        return FUNC1(chip,
                                            spi_flash_common_write_status_16b_wrsr,
                                            spi_flash_common_read_status_16b_rdsr_rdsr2,
                                            qe);
    } else {
        const uint32_t qe = 1<<1;
        return FUNC1(chip,
                                            spi_flash_common_write_status_8b_wrsr2,
                                            spi_flash_common_read_status_8b_rdsr2,
                                            qe);
    }
}