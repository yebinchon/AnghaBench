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
 int /*<<< orphan*/  DPORT_RSA_PD ; 
 int /*<<< orphan*/  DPORT_RSA_PD_CTRL_REG ; 
 int /*<<< orphan*/  PERIPH_RSA_MODULE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mpi_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3( void )
{
    FUNC0(DPORT_RSA_PD_CTRL_REG, DPORT_RSA_PD);

    /* Disable RSA hardware */
    FUNC2(PERIPH_RSA_MODULE);

    FUNC1(&mpi_lock);
}