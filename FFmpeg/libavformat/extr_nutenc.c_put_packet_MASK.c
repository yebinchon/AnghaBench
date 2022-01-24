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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  NUTContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ff_crc04C11DB7_update ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(NUTContext *nut, AVIOContext *bc, AVIOContext *dyn_bc,
                       int calculate_checksum, uint64_t startcode)
{
    uint8_t *dyn_buf = NULL;
    int dyn_size     = FUNC1(dyn_bc, &dyn_buf);
    int forw_ptr     = dyn_size + 4 * calculate_checksum;

    if (forw_ptr > 4096)
        FUNC7(bc, ff_crc04C11DB7_update, 0);
    FUNC2(bc, startcode);
    FUNC5(bc, forw_ptr);
    if (forw_ptr > 4096)
        FUNC3(bc, FUNC6(bc));

    if (calculate_checksum)
        FUNC7(bc, ff_crc04C11DB7_update, 0);
    FUNC4(bc, dyn_buf, dyn_size);
    if (calculate_checksum)
        FUNC3(bc, FUNC6(bc));

    FUNC0(dyn_buf);
}