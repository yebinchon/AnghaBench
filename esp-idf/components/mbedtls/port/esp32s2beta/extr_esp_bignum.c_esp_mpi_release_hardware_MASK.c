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
 int /*<<< orphan*/  DPORT_PERI_CLK_EN_REG ; 
 int /*<<< orphan*/  DPORT_PERI_EN_RSA ; 
 int /*<<< orphan*/  DPORT_PERI_RST_EN_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DPORT_RSA_PD ; 
 int /*<<< orphan*/  DPORT_RSA_PD_CTRL_REG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mpi_lock ; 

void FUNC3( void )
{
    FUNC1(DPORT_RSA_PD_CTRL_REG, DPORT_RSA_PD);

    /* don't reset digital signature unit, as this resets AES also */
    FUNC1(DPORT_PERI_RST_EN_REG, DPORT_PERI_EN_RSA);
    FUNC0(DPORT_PERI_CLK_EN_REG, DPORT_PERI_EN_RSA);

    FUNC2(&mpi_lock);
}