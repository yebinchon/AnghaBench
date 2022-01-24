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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  rmt_item32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_LOG_INFO ; 
 int NEC_DATA_ITEM_NUM ; 
 int /*<<< orphan*/  NEC_TAG ; 
 int RMT_TX_CHANNEL ; 
 int RMT_TX_DATA_NUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC5 (int,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(void *arg)
{
    FUNC9(10);
    FUNC6();
    FUNC1(NEC_TAG, ESP_LOG_INFO);
    int channel = RMT_TX_CHANNEL;
    uint16_t cmd = 0x0;
    uint16_t addr = 0x11;
    int nec_tx_num = RMT_TX_DATA_NUM;
    for(;;) {
        FUNC0(NEC_TAG, "RMT TX DATA");
        size_t size = (sizeof(rmt_item32_t) * NEC_DATA_ITEM_NUM * nec_tx_num);
        //each item represent a cycle of waveform.
        rmt_item32_t* item = (rmt_item32_t*) FUNC3(size);
        int item_num = NEC_DATA_ITEM_NUM * nec_tx_num;
        FUNC4((void*) item, 0, size);
        int i, offset = 0;
        while(1) {
            //To build a series of waveforms.
            i = FUNC5(channel, item + offset, item_num - offset, ((~addr) << 8) | addr, ((~cmd) << 8) |  cmd);
            if(i < 0) {
                break;
            }
            cmd++;
            addr++;
            offset += i;
        }
        //To send data according to the waveform items.
        FUNC8(channel, item, item_num, true);
        //Wait until sending is done.
        FUNC7(channel, portMAX_DELAY);
        //before we free the data, make sure sending is already done.
        FUNC2(item);
        FUNC9(2000 / portTICK_PERIOD_MS);
    }
    FUNC10(NULL);
}