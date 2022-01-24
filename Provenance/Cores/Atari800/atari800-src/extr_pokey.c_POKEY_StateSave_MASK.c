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
 int /*<<< orphan*/ * POKEY_AUDC ; 
 int /*<<< orphan*/ * POKEY_AUDCTL ; 
 int /*<<< orphan*/ * POKEY_AUDF ; 
 int* POKEY_Base_mult ; 
 int POKEY_DELAYED_SERIN_IRQ ; 
 int POKEY_DELAYED_SEROUT_IRQ ; 
 int POKEY_DELAYED_XMTDONE_IRQ ; 
 int* POKEY_DivNIRQ ; 
 int* POKEY_DivNMax ; 
 int /*<<< orphan*/  POKEY_IRQEN ; 
 int /*<<< orphan*/  POKEY_IRQST ; 
 int /*<<< orphan*/  POKEY_KBCODE ; 
 int /*<<< orphan*/  POKEY_SKCTL ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

void FUNC2(void)
{
	int shift_key = 0;
	int keypressed = 0;

	FUNC1(&POKEY_KBCODE, 1);
	FUNC1(&POKEY_IRQST, 1);
	FUNC1(&POKEY_IRQEN, 1);
	FUNC1(&POKEY_SKCTL, 1);

	FUNC0(&shift_key, 1);
	FUNC0(&keypressed, 1);
	FUNC0(&POKEY_DELAYED_SERIN_IRQ, 1);
	FUNC0(&POKEY_DELAYED_SEROUT_IRQ, 1);
	FUNC0(&POKEY_DELAYED_XMTDONE_IRQ, 1);

	FUNC1(&POKEY_AUDF[0], 4);
	FUNC1(&POKEY_AUDC[0], 4);
	FUNC1(&POKEY_AUDCTL[0], 1);

	FUNC0(&POKEY_DivNIRQ[0], 4);
	FUNC0(&POKEY_DivNMax[0], 4);
	FUNC0(&POKEY_Base_mult[0], 1);
}