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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  raw ;
typedef  scalar_t__ esp_err_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  EFUSE_BLK2 ; 
 scalar_t__ EFUSE_CODING_SCHEME_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__*,scalar_t__*,int) ; 

void FUNC7(uint32_t blk_wdata0_reg)
{
    uint32_t buf[8];
    uint8_t raw[24];

    if (FUNC5(EFUSE_BLK2) == EFUSE_CODING_SCHEME_NONE) {
        FUNC3(buf, sizeof(buf));
    } else { // 3/4 Coding Scheme
        FUNC3(raw, sizeof(raw));
        esp_err_t r = FUNC6(raw, buf, sizeof(raw));
        (void) r;
        FUNC2(r == ESP_OK);
    }

    FUNC0(TAG, "Writing random values to address 0x%08x", blk_wdata0_reg);
    for (int i = 0; i < 8; i++) {
        FUNC0(TAG, "EFUSE_BLKx_WDATA%d_REG = 0x%08x", i, buf[i]);
        FUNC1(blk_wdata0_reg + 4*i, buf[i]);
    }
    FUNC4(buf, sizeof(buf));
    FUNC4(raw, sizeof(raw));
}