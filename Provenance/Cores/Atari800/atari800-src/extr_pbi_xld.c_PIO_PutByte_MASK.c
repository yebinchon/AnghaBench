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
typedef  char UBYTE ;

/* Variables and functions */
 int* CommandFrame ; 
 int CommandIndex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* DataBuffer ; 
 int DataIndex ; 
 int ExpectedBytes ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
#define  PIO_CommandFrame 129 
 int PIO_FinalStatus ; 
 int PIO_NoFrame ; 
 int PIO_StatusRead ; 
#define  PIO_WriteFrame 128 
 char FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int TransferStatus ; 
 char FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void FUNC5(int byte)
{
	FUNC0(FUNC4("TransferStatus:%d\n",TransferStatus));
	switch (TransferStatus) {
	case PIO_CommandFrame:
		FUNC0(FUNC4("CommandIndex:%d ExpectedBytes:%d\n",CommandIndex,ExpectedBytes));
		if (CommandIndex < ExpectedBytes) {
			CommandFrame[CommandIndex++] = byte;
			if (CommandIndex >= ExpectedBytes) {
				if (CommandFrame[0] >= 0x31 && CommandFrame[0] <= 0x38) {
					TransferStatus = PIO_StatusRead;
					/*DELAYED_SERIN_IRQ = SERIN_INTERVAL + ACK_INTERVAL;*/
					FUNC0(FUNC4("TransferStatus = PIO_StatusRead\n"));
				}
				else{
					TransferStatus = PIO_NoFrame;
					FUNC0(FUNC4("TransferStatus = PIO_NoFrame\n"));
				}
			}
		}
		else {
			FUNC1("Invalid command frame!");
			TransferStatus = PIO_NoFrame;
		}
		break;
	case PIO_WriteFrame:		/* Expect data */
		if (DataIndex < ExpectedBytes) {
			DataBuffer[DataIndex++] = byte;
			if (DataIndex >= ExpectedBytes) {
				UBYTE sum = FUNC2(DataBuffer, ExpectedBytes - 1);
				if (sum == DataBuffer[ExpectedBytes - 1]) {
					UBYTE result = FUNC3();
					if (result != 0) {
						DataBuffer[0] = 'A';
						DataBuffer[1] = result;
						DataIndex = 0;
						ExpectedBytes = 2;
						/*DELAYED_SERIN_IRQ = SERIN_INTERVAL + ACK_INTERVAL;*/
						TransferStatus = PIO_FinalStatus;
					}
					else
						TransferStatus = PIO_NoFrame;
				}
				else {
					DataBuffer[0] = 'E';
					DataIndex = 0;
					ExpectedBytes = 1;
					/*DELAYED_SERIN_IRQ = SERIN_INTERVAL + ACK_INTERVAL;*/
					TransferStatus = PIO_FinalStatus;
				}
			}
		}
		else {
			FUNC1("Invalid data frame!");
		}
		break;
	}
	/*DELAYED_SEROUT_IRQ = SEROUT_INTERVAL;*/
}