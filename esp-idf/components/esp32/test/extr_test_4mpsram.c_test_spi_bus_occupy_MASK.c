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
typedef  scalar_t__ spi_host_device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ HSPI_HOST ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ VSPI_HOST ; 
 int FUNC3 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(spi_host_device_t expected_occupied_host)
{
    bool claim_hspi = FUNC3(HSPI_HOST, "ut-hspi");
    if (claim_hspi) FUNC0(TAG, "HSPI claimed.");

    bool claim_vspi = FUNC3(VSPI_HOST, "ut-vspi");
    if (claim_vspi) FUNC0(TAG, "VSPI claimed.");

    if (expected_occupied_host == HSPI_HOST) {
        FUNC2(claim_hspi);
        FUNC1(claim_vspi);
    } else if (expected_occupied_host == VSPI_HOST) {
        FUNC2(claim_vspi);
        FUNC1(claim_hspi);
    } else {
        FUNC1(claim_hspi);
        FUNC1(claim_vspi);
    }

#ifdef CONFIG_SPIRAM
    test_psram_content();
#endif
}