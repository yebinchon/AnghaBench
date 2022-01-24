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
 int DPORT_PERI_EN_AES ; 
 int DPORT_PERI_EN_DIGITAL_SIGNATURE ; 
 int /*<<< orphan*/  DPORT_PERI_RST_EN_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  aes_spinlock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3( void )
{
    /* newlib locks lazy initialize on ESP-IDF */
    FUNC2(&aes_spinlock);

    /* Enable AES hardware */
    FUNC1(DPORT_PERI_CLK_EN_REG, DPORT_PERI_EN_AES);
    /* Clear reset on digital signature unit,
       otherwise AES unit is held in reset also. */
    FUNC0(DPORT_PERI_RST_EN_REG,
                DPORT_PERI_EN_AES
                | DPORT_PERI_EN_DIGITAL_SIGNATURE);
}