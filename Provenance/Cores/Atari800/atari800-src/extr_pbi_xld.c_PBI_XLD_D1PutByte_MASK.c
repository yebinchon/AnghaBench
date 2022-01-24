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
typedef  int UWORD ;
typedef  int UBYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ CommandIndex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ DataIndex ; 
 int ExpectedBytes ; 
 int /*<<< orphan*/  PBI_IRQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ PIO_CommandFrame ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ PIO_ReadFrame ; 
 scalar_t__ PIO_StatusRead ; 
 int /*<<< orphan*/  POKEY_IRQEN ; 
 int /*<<< orphan*/  POKEY_OFFSET_IRQEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ TransferStatus ; 
 int /*<<< orphan*/  VOICE_MASK ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ VOTRAXSND_busy ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int modem_latch ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int votrax_latch ; 
 scalar_t__ xld_d_enabled ; 

void FUNC8(UWORD addr, UBYTE byte)
{
	if ((addr & ~3) == 0xd104)  {
		/* XLD disk strobe line */
		FUNC1(FUNC7("votrax write:%4x\n",addr));
		if (VOTRAXSND_busy) {
			FUNC2(TRUE); /* idle -> busy */
		}
		FUNC5(votrax_latch & 0x3f);

	}
	else if ((addr & ~3) == 0xd100 )  {
		/* votrax phoneme+irq-enable latch */
		if ( !(votrax_latch & 0x80) && (byte & 0x80) && (!FUNC6())) {
			/* IRQ disabled -> enabled, and votrax idle: generate IRQ */
			FUNC1(FUNC7("votrax IRQ generated: IRQ enable changed and idle\n"));
			FUNC0();
			PBI_IRQ |= VOICE_MASK;
		} else if ((votrax_latch & 0x80) && !(byte & 0x80) ){
			/* IRQ enabled -> disabled : stop IRQ */
			PBI_IRQ &= ~VOICE_MASK;
			/* update pokey IRQ status */
			FUNC4(POKEY_OFFSET_IRQEN, POKEY_IRQEN);
		}
		votrax_latch = byte;
	}
	else if (addr == 0xd108) {
	/* modem latch and XLD 8040 T1 input */
		FUNC1(FUNC7("XLD 8040 T1:%d loop-back:%d modem+phone:%d offhook(modem relay):%d phaudio:%d DTMF:%d O/!A(originate/answer):%d SQT(squelch transmitter):%d\n",!!(byte&0x80),!!(byte&0x40),!!(byte&0x20),!!(byte&0x10),!!(byte&0x08),!!(byte&0x04),!!(byte&0x02),!!(byte&0x01)));
		modem_latch = byte;
	}
	else if (xld_d_enabled && addr == 0xd110) {
	/* XLD byte output from atari to disk latch */ 
		FUNC1(FUNC7("d110: disk output byte:%2x\n",byte));
		if (modem_latch & 0x80){
			/* 8040 T1=1 */
			CommandIndex = 0;
			DataIndex = 0;
			TransferStatus = PIO_CommandFrame;
			ExpectedBytes = 5;
			FUNC1(FUNC7("command frame expected\n"));
		}
		else if (TransferStatus == PIO_StatusRead || TransferStatus == PIO_ReadFrame) {
			FUNC1(FUNC7("read ack strobe\n"));
		}
		else {
			FUNC3(byte);
		}
	}
}