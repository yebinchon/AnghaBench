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
typedef  int uint8_t ;
struct TYPE_3__ {size_t size; scalar_t__ address; } ;
typedef  TYPE_1__ esp_partition_t ;
typedef  int /*<<< orphan*/  ends ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t SPI_FLASH_SEC_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int const,int) ; 
 int /*<<< orphan*/  FUNC3 (int const*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 TYPE_1__* FUNC6 () ; 
 int* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,size_t,int const*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int const*,size_t) ; 

__attribute__((used)) static void FUNC12(const uint8_t *source, size_t length)
{
    const esp_partition_t *part = FUNC6();
    FUNC1(part->size > length + 2 + SPI_FLASH_SEC_SIZE);

    FUNC8("Writing %d bytes from source %p\n", length, source);

    uint8_t *buf = FUNC7(length);
    FUNC4(buf);

    FUNC0( FUNC9(part->address, (length + SPI_FLASH_SEC_SIZE) & ~(SPI_FLASH_SEC_SIZE-1)) );

    // note writing to unaligned address
    FUNC0( FUNC11(part->address + 1, source, length) );

    FUNC0( FUNC10(part->address + 1, buf, length) );

    FUNC3(source, buf, length);

    FUNC5(buf);

    // check nothing was written at beginning or end
    uint8_t ends[8];

    FUNC0( FUNC10(part->address, ends, sizeof(ends)) );
    FUNC2(0xFF, ends[0]);
    FUNC2(source[0] , ends[1]);

    FUNC0( FUNC10(part->address + length, ends, sizeof(ends)) );

    FUNC2(source[length-1], ends[0]);
    FUNC2(0xFF, ends[1]);
    FUNC2(0xFF, ends[2]);
    FUNC2(0xFF, ends[3]);
}