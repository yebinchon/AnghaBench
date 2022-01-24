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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  sdmmc_card_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 size_t DR_REG_SLCHOST_BASE ; 
 size_t SLCHOST_CONF_W0 ; 
 int /*<<< orphan*/  FUNC0 (int const,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,size_t const,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,size_t const,int const,int*) ; 

__attribute__((used)) static void FUNC5(sdmmc_card_t* card)
{
    esp_err_t err;
    FUNC2("Write bytes to slave's W0_REG using CMD52\n");
    const size_t scratch_area_reg = SLCHOST_CONF_W0 - DR_REG_SLCHOST_BASE;

    const uint8_t test_byte_1 = 0xa5;
    const uint8_t test_byte_2 = 0xb6;
    // used to check Read-After-Write
    uint8_t test_byte_1_raw;
    uint8_t test_byte_2_raw;
    uint8_t val = 0;
    err = FUNC4(card, 1, scratch_area_reg, test_byte_1, &test_byte_1_raw);
    FUNC1(err);
    FUNC0(test_byte_1, test_byte_1_raw);
    err = FUNC4(card, 1, scratch_area_reg + 1, test_byte_2, &test_byte_2_raw);
    FUNC1(err);
    FUNC0(test_byte_2, test_byte_2_raw);

    FUNC2("Read back bytes using CMD52\n");
    FUNC1(FUNC3(card, 1, scratch_area_reg, &val));
    FUNC0(test_byte_1, val);

    FUNC1(FUNC3(card, 1, scratch_area_reg + 1, &val));
    FUNC0(test_byte_2, val);
}