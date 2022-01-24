#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_5__ {int clk_en; } ;
struct TYPE_6__ {TYPE_2__ cg; TYPE_1__* channel; } ;
struct TYPE_4__ {int prescale; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_3__ SIGMADELTA ; 
 int /*<<< orphan*/  _on_apb_change ; 
 int /*<<< orphan*/  _sd_sys_lock ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

uint32_t FUNC5(uint8_t channel, uint32_t freq) //chan 0-7 freq 1220-312500
{
    if(channel > 7) {
        return 0;
    }
#if !CONFIG_DISABLE_HAL_LOCKS
    static bool tHasStarted = false;
    if(!tHasStarted) {
        tHasStarted = true;
        _sd_sys_lock = FUNC4();
    }
#endif
    uint32_t apb_freq = FUNC3();
    uint32_t prescale = (apb_freq/(freq*256)) - 1;
    if(prescale > 0xFF) {
        prescale = 0xFF;
    }
    FUNC0();
    SIGMADELTA.channel[channel].prescale = prescale;
    SIGMADELTA.cg.clk_en = 0;
    SIGMADELTA.cg.clk_en = 1;
    FUNC1();
    uint32_t iarg = channel;
    FUNC2((void*)iarg, _on_apb_change);
    return apb_freq/((prescale + 1) * 256);
}