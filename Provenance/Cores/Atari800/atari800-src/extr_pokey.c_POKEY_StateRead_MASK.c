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
typedef  int /*<<< orphan*/  UWORD ;

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
 scalar_t__ POKEY_OFFSET_AUDC1 ; 
 int /*<<< orphan*/  POKEY_OFFSET_AUDCTL ; 
 scalar_t__ POKEY_OFFSET_AUDF1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POKEY_SKCTL ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

void FUNC3(void)
{
	int i;
	int shift_key;
	int keypressed;

	FUNC2(&POKEY_KBCODE, 1);
	FUNC2(&POKEY_IRQST, 1);
	FUNC2(&POKEY_IRQEN, 1);
	FUNC2(&POKEY_SKCTL, 1);

	FUNC1(&shift_key, 1);
	FUNC1(&keypressed, 1);
	FUNC1(&POKEY_DELAYED_SERIN_IRQ, 1);
	FUNC1(&POKEY_DELAYED_SEROUT_IRQ, 1);
	FUNC1(&POKEY_DELAYED_XMTDONE_IRQ, 1);

	FUNC2(&POKEY_AUDF[0], 4);
	FUNC2(&POKEY_AUDC[0], 4);
	FUNC2(&POKEY_AUDCTL[0], 1);
	for (i = 0; i < 4; i++) {
		FUNC0((UWORD) (POKEY_OFFSET_AUDF1 + i * 2), POKEY_AUDF[i]);
		FUNC0((UWORD) (POKEY_OFFSET_AUDC1 + i * 2), POKEY_AUDC[i]);
	}
	FUNC0(POKEY_OFFSET_AUDCTL, POKEY_AUDCTL[0]);

	FUNC1(&POKEY_DivNIRQ[0], 4);
	FUNC1(&POKEY_DivNMax[0], 4);
	FUNC1(&POKEY_Base_mult[0], 1);
}