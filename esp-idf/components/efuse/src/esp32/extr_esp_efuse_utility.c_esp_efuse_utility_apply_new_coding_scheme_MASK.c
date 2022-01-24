#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  reg ;
typedef  scalar_t__ esp_err_t ;
typedef  scalar_t__ esp_efuse_coding_scheme_t ;
typedef  int /*<<< orphan*/  buf_w_data ;
struct TYPE_2__ {scalar_t__ start; } ;

/* Variables and functions */
 int COUNT_EFUSE_BLOCKS ; 
 int COUNT_EFUSE_REG_PER_BLOCK ; 
 scalar_t__ EFUSE_CODING_SCHEME_3_4 ; 
 scalar_t__ EFUSE_CODING_SCHEME_NONE ; 
 scalar_t__ EFUSE_CODING_SCHEME_REPEAT ; 
 scalar_t__ ESP_ERR_CODING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* range_write_addr_blocks ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__*) ; 
 int FUNC6 (int,scalar_t__*) ; 

esp_err_t FUNC7()
{
    uint8_t buf_w_data[COUNT_EFUSE_REG_PER_BLOCK * 4];
    uint8_t buf_r_data[COUNT_EFUSE_REG_PER_BLOCK * 4];
    uint32_t reg[COUNT_EFUSE_REG_PER_BLOCK];
    // start with EFUSE_BLK1. EFUSE_BLK0 - always uses EFUSE_CODING_SCHEME_NONE.
    for (int num_block = 1; num_block < COUNT_EFUSE_BLOCKS; num_block++) {
        esp_efuse_coding_scheme_t scheme = FUNC2(num_block);
        // check and apply a new coding scheme.
        if (scheme != EFUSE_CODING_SCHEME_NONE) {
            FUNC4(buf_w_data, 0, sizeof(buf_w_data));
            FUNC4((uint8_t*)reg, 0, sizeof(reg));
            if (FUNC6(num_block, (uint32_t*)buf_w_data) == true) {
                FUNC5(num_block, (uint32_t*)buf_r_data);
                if (scheme == EFUSE_CODING_SCHEME_3_4) {
                    if (*((uint32_t*)buf_w_data + 6) != 0 || *((uint32_t*)buf_w_data + 7) != 0) {
                        return ESP_ERR_CODING;
                    }
                    for (int i = 0; i < 24; ++i) {
                        if (buf_w_data[i] != 0) {
                            int st_offset_buf = (i / 6) * 6;
                            // check that place is free.
                            for (int n = st_offset_buf; n < st_offset_buf + 6; ++n) {
                                if (buf_r_data[n] != 0) {
                                    FUNC0(TAG, "Bits are not empty. Write operation is forbidden.");
                                    return ESP_ERR_CODING;
                                }
                            }

                            esp_err_t err = FUNC3(&buf_w_data[st_offset_buf], reg, 6);
                            if (err != ESP_OK) {
                                return err;
                            }

                            int num_reg = (st_offset_buf / 6) * 2;
                            for (int r = 0; r < 2; r++) {
                                FUNC1(range_write_addr_blocks[num_block].start + (num_reg + r) * 4, reg[r]);
                            }
                            i = st_offset_buf + 5;
                        }
                    }
                } else if (scheme == EFUSE_CODING_SCHEME_REPEAT) {
                    uint32_t* buf_32 = (uint32_t*)buf_w_data;
                    for (int i = 4; i < 8; ++i) {
                        if (*(buf_32 + i) != 0) {
                            return ESP_ERR_CODING;
                        }
                    }
                    for (int i = 0; i < 4; ++i) {
                        if (buf_32[i] != 0) {
                            FUNC1(range_write_addr_blocks[num_block].start + i * 4, buf_32[i]);
                            FUNC1(range_write_addr_blocks[num_block].start + (i + 4) * 4, buf_32[i]);
                        }
                    }
                }
            }
        }
    }
    return ESP_OK;
}