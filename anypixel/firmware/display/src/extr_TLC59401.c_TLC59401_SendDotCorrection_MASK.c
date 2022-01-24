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
struct TYPE_2__ {int /*<<< orphan*/  pin; int /*<<< orphan*/  GPIOx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int TLC59401_CHANNELS ; 
 size_t TLC59401_PIN_MODE ; 
 int /*<<< orphan*/  TLC59401_SPI ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  dotCorrections ; 
 int enableBlank ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ needLatch0 ; 
 scalar_t__ needLatch1 ; 
 TYPE_1__* pins_tlc59401 ; 

void FUNC6(void) {
    #ifdef USE_SPI_DMA
    uint8_t rxBuf[TLC59401_CHANNELS*3/4];
    #endif
    // int i;
    //for(i = 0; i < TLC59401_CHANNELS*3/4; i++)
    //    dotCorrections[i] = 0xFF;

    // wait until any pending latch is complete
    while(!FUNC5(TLC59401_SPI) || needLatch0 || needLatch1);

    // disable grayscale and wait for it to stop to eliminate possible noise sources
    enableBlank = false;
    FUNC0(4);

    FUNC2(pins_tlc59401[TLC59401_PIN_MODE].GPIOx, pins_tlc59401[TLC59401_PIN_MODE].pin);
    FUNC0(2);
    #ifndef USE_SPI_DMA
     FUNC4(dotCorrections, TLC59401_CHANNELS*3/4);
    #else
     Start_DMA_Transfer(dotCorrections, rxBuf, TLC59401_CHANNELS*3/4);
    #endif

    // need to have at least 3ms delay to guarantee values have been latched before releasing mode line
    while(needLatch0 || needLatch1);

    FUNC1(pins_tlc59401[TLC59401_PIN_MODE].GPIOx, pins_tlc59401[TLC59401_PIN_MODE].pin);

    enableBlank = true;
}