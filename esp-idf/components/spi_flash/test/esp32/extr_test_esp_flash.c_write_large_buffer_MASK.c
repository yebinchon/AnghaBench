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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {scalar_t__ address; } ;
typedef  TYPE_1__ esp_partition_t ;
typedef  int /*<<< orphan*/  esp_flash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t SPI_FLASH_SEC_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC4(esp_flash_t *chip, const esp_partition_t *part, const uint8_t *source, size_t length)
{
    FUNC3("Writing chip %p, %d bytes from source %p\n", chip, length, source);

    FUNC0( FUNC1(chip, part->address, (length + SPI_FLASH_SEC_SIZE) & ~(SPI_FLASH_SEC_SIZE - 1)) );

    // note writing to unaligned address
    FUNC0( FUNC2(chip, source, part->address + 1, length) );
}