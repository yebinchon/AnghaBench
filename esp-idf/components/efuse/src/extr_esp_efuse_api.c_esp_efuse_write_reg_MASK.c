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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ esp_err_t ;
typedef  int /*<<< orphan*/  esp_efuse_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ ESP_OK ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int s_batch_writing_mode ; 

esp_err_t FUNC6(esp_efuse_block_t blk, unsigned int num_reg, uint32_t val)
{
    FUNC0();
    if (s_batch_writing_mode == false) {
        FUNC4();
    }
    esp_err_t err = FUNC5(blk, num_reg, val);
    if (s_batch_writing_mode == false) {
        if (err == ESP_OK) {
            err = FUNC2();
            if (err == ESP_OK) {
                FUNC3();
            }
        }
        FUNC4();
    }
    FUNC1();
    return err;
}