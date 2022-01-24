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
 int /*<<< orphan*/  DPORT_PERI_EN_AES ; 
 int /*<<< orphan*/  DPORT_PERI_RST_EN_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aes_spinlock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3( void )
{
    /* Disable AES hardware */
    FUNC1(DPORT_PERI_RST_EN_REG, DPORT_PERI_EN_AES);
    /* Don't return other units to reset, as this pulls
       reset on RSA & SHA units, respectively. */
    FUNC0(DPORT_PERI_CLK_EN_REG, DPORT_PERI_EN_AES);

    FUNC2(&aes_spinlock);
}