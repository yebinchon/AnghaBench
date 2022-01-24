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
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_LOG_INFO ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static esp_err_t FUNC4(void)
{
    //the host write REG1, the slave should write its registers according to value of REG1
    uint8_t read = FUNC2(1);
    for (int i = 0; i < 64; i++) {
        //skip interrupt regs.
        if (i >= 28 && i <= 31) continue;
        FUNC3(i, read+3*i);
    }
    uint8_t reg[64] = {0};
    for (int i = 0; i < 64; i++) {
        //skip interrupt regs.
        if (i >= 28 && i <= 31) continue;
        reg[i] = FUNC2(i);
    }
    FUNC0(TAG, "write regs:");
    FUNC1(TAG, reg, 64, ESP_LOG_INFO);
    return ESP_OK;
}