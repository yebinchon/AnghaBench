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

/* Variables and functions */
 size_t CONFIG_ETH_SMI_MDC_GPIO ; 
 size_t CONFIG_ETH_SMI_MDIO_GPIO ; 
 int /*<<< orphan*/  EMAC_MDC_O_IDX ; 
 int /*<<< orphan*/  EMAC_MDI_I_IDX ; 
 int /*<<< orphan*/  EMAC_MDO_O_IDX ; 
 int /*<<< orphan*/  GPIO_MODE_INPUT_OUTPUT ; 
 int /*<<< orphan*/  GPIO_MODE_OUTPUT ; 
 int /*<<< orphan*/ * GPIO_PIN_MUX_REG ; 
 int /*<<< orphan*/  PIN_FUNC_GPIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
    /* Setup SMI MDC GPIO */
    FUNC3(CONFIG_ETH_SMI_MDC_GPIO, GPIO_MODE_OUTPUT);
    FUNC2(CONFIG_ETH_SMI_MDC_GPIO, EMAC_MDC_O_IDX, false, false);
    FUNC0(GPIO_PIN_MUX_REG[CONFIG_ETH_SMI_MDC_GPIO], PIN_FUNC_GPIO);
    /* Setup SMI MDIO GPIO */
    FUNC3(CONFIG_ETH_SMI_MDIO_GPIO, GPIO_MODE_INPUT_OUTPUT);
    FUNC2(CONFIG_ETH_SMI_MDIO_GPIO, EMAC_MDO_O_IDX, false, false);
    FUNC1(CONFIG_ETH_SMI_MDIO_GPIO, EMAC_MDI_I_IDX, false);
    FUNC0(GPIO_PIN_MUX_REG[CONFIG_ETH_SMI_MDIO_GPIO], PIN_FUNC_GPIO);
}