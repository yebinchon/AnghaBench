#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {int duty_resolution; int tick_sel; scalar_t__ clock_divider; } ;
struct TYPE_4__ {TYPE_1__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__ FUNC2 (int,int) ; 
 int FUNC3 () ; 

__attribute__((used)) static double FUNC4(uint8_t chan)
{
    uint32_t div_num;
    uint8_t bit_num;
    bool apb_clk;
    uint8_t group=(chan/8), timer=((chan/2)%4);
    FUNC0();
    div_num = FUNC2(group, timer).conf.clock_divider;//18 bit (10.8) This register is used to configure parameter for divider in timer the least significant eight bits represent the decimal part.
    bit_num = FUNC2(group, timer).conf.duty_resolution;//5 bit This register controls the range of the counter in timer. the counter range is [0 2**bit_num] the max bit width for counter is 20.
    apb_clk = FUNC2(group, timer).conf.tick_sel;//apb clock
    FUNC1();
    uint64_t clk_freq = 1000000;
    if(apb_clk) {
        clk_freq = FUNC3();
    }
    clk_freq <<= 8;//div_num is 8 bit decimal
    return (clk_freq >> bit_num) / (double)div_num;
}