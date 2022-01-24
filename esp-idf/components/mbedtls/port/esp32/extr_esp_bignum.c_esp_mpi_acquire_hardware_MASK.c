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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DPORT_RSA_PD ; 
 int /*<<< orphan*/  DPORT_RSA_PD_CTRL_REG ; 
 int /*<<< orphan*/  PERIPH_RSA_MODULE ; 
 int /*<<< orphan*/  RSA_CLEAN_REG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mpi_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4( void )
{
    /* newlib locks lazy initialize on ESP-IDF */
    FUNC2(&mpi_lock);

    /* Enable RSA hardware */
    FUNC3(PERIPH_RSA_MODULE);
    FUNC0(DPORT_RSA_PD_CTRL_REG, DPORT_RSA_PD);

    while(FUNC1(RSA_CLEAN_REG) != 1);
    // Note: from enabling RSA clock to here takes about 1.3us
}