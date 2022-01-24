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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int I2S_DSCR_EN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int I2S_INLINK_START ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int I2S_OUTLINK_START ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int I2S_RX_FIFO_RESET ; 
 int I2S_RX_RESET ; 
 int I2S_RX_START ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int I2S_TX_FIFO_RESET ; 
 int I2S_TX_FIFO_RESET_BACK ; 
 int I2S_TX_IDLE ; 
 int I2S_TX_REMPTY_INT_RAW ; 
 int I2S_TX_RESET ; 
 int I2S_TX_START ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(void)
{
    //No need to finish if no DMA transfer going on
    if (!(FUNC6(FUNC2(0))&I2S_DSCR_EN)) {
        return;
    }

    //Wait till fifo done
    while (!(FUNC6(FUNC3(0))&I2S_TX_REMPTY_INT_RAW)) ;
    //Wait for last bytes to leave i2s xmit thing
    //ToDo: poll bit in next hw
//  for (i=0; i<(1<<8); i++);
    while (!(FUNC6(FUNC5(0))&I2S_TX_IDLE));

    //Reset I2S for next transfer
    FUNC0(FUNC1(0), I2S_TX_START | I2S_RX_START);
    FUNC0(FUNC4(0), I2S_OUTLINK_START | I2S_INLINK_START);

    FUNC7(FUNC1(0), I2S_TX_RESET | I2S_TX_FIFO_RESET | I2S_RX_RESET | I2S_RX_FIFO_RESET);
    FUNC0(FUNC1(0), I2S_TX_RESET | I2S_TX_FIFO_RESET | I2S_RX_RESET | I2S_RX_FIFO_RESET);

//  for (i=0; i<(1<<8); i++);
    while ((FUNC6(FUNC5(0))&I2S_TX_FIFO_RESET_BACK));
}