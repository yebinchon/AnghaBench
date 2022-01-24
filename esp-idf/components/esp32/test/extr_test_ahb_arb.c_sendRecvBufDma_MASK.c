#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int length; int size; int owner; int eof; scalar_t__ empty; scalar_t__ offset; int /*<<< orphan*/ * buf; scalar_t__ sosf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int I2S_AHBM_FIFO_RST ; 
 int I2S_AHBM_RST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int I2S_DSCR_EN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int I2S_INDSCR_BURST_EN ; 
 int I2S_INLINK_ADDR ; 
 int I2S_INLINK_START ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int I2S_IN_RST ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int I2S_MEM_TRANS_EN ; 
 int I2S_OUTDSCR_BURST_EN ; 
 int I2S_OUTLINK_ADDR ; 
 int I2S_OUTLINK_START ; 
 int I2S_OUT_DATA_BURST_EN ; 
 int I2S_OUT_EOF_MODE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int I2S_OUT_RST ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int I2S_RX_FIFO_RESET ; 
 int I2S_RX_RESET ; 
 int I2S_RX_START ; 
 int I2S_TX_FIFO_RESET ; 
 int I2S_TX_RESET ; 
 int I2S_TX_START ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* dmaDesc ; 

__attribute__((used)) static void FUNC10(uint16_t *sbuf, uint16_t *rbuf, int len)
{
    //Fill DMA descriptor
    dmaDesc[0].length = len * 2;
    dmaDesc[0].size = len * 2;
    dmaDesc[0].owner = 1;
    dmaDesc[0].sosf = 0;
    dmaDesc[0].buf = (uint8_t *)sbuf;
    dmaDesc[0].offset = 0; //unused in hw
    dmaDesc[0].empty = 0;
    dmaDesc[0].eof = 1;
    dmaDesc[1].length = len * 2;
    dmaDesc[1].size = len * 2;
    dmaDesc[1].owner = 1;
    dmaDesc[1].sosf = 0;
    dmaDesc[1].buf = (uint8_t *)rbuf;
    dmaDesc[1].offset = 0; //unused in hw
    dmaDesc[1].empty = 0;
    dmaDesc[1].eof = 1;

    //Reset DMA
    FUNC8(FUNC5(0), I2S_IN_RST | I2S_OUT_RST | I2S_AHBM_RST | I2S_AHBM_FIFO_RST);
    FUNC0(FUNC5(0), I2S_IN_RST | I2S_OUT_RST | I2S_AHBM_RST | I2S_AHBM_FIFO_RST);

    //Reset I2S FIFO
    FUNC8(FUNC1(0), I2S_RX_RESET | I2S_TX_RESET | I2S_TX_FIFO_RESET | I2S_RX_FIFO_RESET);
    FUNC0(FUNC1(0), I2S_RX_RESET | I2S_TX_RESET | I2S_TX_FIFO_RESET | I2S_RX_FIFO_RESET);

    //Set desc addr
    FUNC0(FUNC6(0), I2S_OUTLINK_ADDR);
    FUNC8(FUNC6(0), ((uint32_t)(&dmaDesc[0]))&I2S_OUTLINK_ADDR);
    FUNC0(FUNC4(0), I2S_INLINK_ADDR);
    FUNC8(FUNC4(0), ((uint32_t)(&dmaDesc[1]))&I2S_INLINK_ADDR);

    FUNC8(FUNC2(0), I2S_DSCR_EN); //Enable DMA mode

    FUNC9(FUNC7(0), len);

    //Enable and configure DMA
    FUNC9(FUNC5(0), I2S_OUT_DATA_BURST_EN  |
                   I2S_OUT_EOF_MODE | I2S_OUTDSCR_BURST_EN | I2S_OUT_DATA_BURST_EN |
                   I2S_INDSCR_BURST_EN | I2S_MEM_TRANS_EN);

    //Start transmission
    FUNC8(FUNC6(0), I2S_OUTLINK_START);
    FUNC8(FUNC4(0), I2S_INLINK_START);

    FUNC8(FUNC1(0), I2S_TX_START | I2S_RX_START);
    //Clear int flags
    FUNC9(FUNC3(0), 0xFFFFFFFF);
}