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
struct TYPE_3__ {scalar_t__ address; } ;
typedef  TYPE_1__ esp_partition_t ;
typedef  int /*<<< orphan*/  esp_flash_t ;
typedef  int /*<<< orphan*/  ends ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int const,int) ; 
 int /*<<< orphan*/  FUNC2 (int const*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC8(esp_flash_t *chip, const esp_partition_t *part, const uint8_t *source, size_t length)
{
    FUNC7("Checking chip %p, %d bytes\n", chip, length);
    uint8_t *buf = FUNC6(length);
    FUNC3(buf);
    FUNC0( FUNC4(chip, buf, part->address + 1, length) );
    FUNC2(source, buf, length);
    FUNC5(buf);

    // check nothing was written at beginning or end
    uint8_t ends[8];

    FUNC0( FUNC4(chip, ends, part->address, sizeof(ends)) );
    FUNC1(0xFF, ends[0]);
    FUNC1(source[0], ends[1]);

    FUNC0( FUNC4(chip, ends, part->address + length, sizeof(ends)) );

    FUNC1(source[length - 1], ends[0]);
    FUNC1(0xFF, ends[1]);
    FUNC1(0xFF, ends[2]);
    FUNC1(0xFF, ends[3]);
}