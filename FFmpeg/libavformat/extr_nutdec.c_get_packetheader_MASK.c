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
typedef  scalar_t__ uint64_t ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  NUTContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__ (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int),scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(NUTContext *nut, AVIOContext *bc,
                            int calculate_checksum, uint64_t startcode)
{
    int64_t size;

    startcode = FUNC0(startcode);
    startcode = FUNC2(0, (uint8_t*) &startcode, 8);

    FUNC4(bc, ff_crc04C11DB7_update, startcode);
    size = FUNC5(bc);
    if (size > 4096)
        FUNC1(bc);
    if (FUNC3(bc) && size > 4096)
        return -1;

    FUNC4(bc, calculate_checksum ? ff_crc04C11DB7_update : NULL, 0);

    return size;
}