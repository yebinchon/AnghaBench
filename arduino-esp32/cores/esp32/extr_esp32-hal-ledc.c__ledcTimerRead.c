
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int duty_resolution; int tick_sel; scalar_t__ clock_divider; } ;
struct TYPE_4__ {TYPE_1__ conf; } ;


 int LEDC_MUTEX_LOCK () ;
 int LEDC_MUTEX_UNLOCK () ;
 TYPE_2__ LEDC_TIMER (int,int) ;
 int getApbFrequency () ;

__attribute__((used)) static double _ledcTimerRead(uint8_t chan)
{
    uint32_t div_num;
    uint8_t bit_num;
    bool apb_clk;
    uint8_t group=(chan/8), timer=((chan/2)%4);
    LEDC_MUTEX_LOCK();
    div_num = LEDC_TIMER(group, timer).conf.clock_divider;
    bit_num = LEDC_TIMER(group, timer).conf.duty_resolution;
    apb_clk = LEDC_TIMER(group, timer).conf.tick_sel;
    LEDC_MUTEX_UNLOCK();
    uint64_t clk_freq = 1000000;
    if(apb_clk) {
        clk_freq = getApbFrequency();
    }
    clk_freq <<= 8;
    return (clk_freq >> bit_num) / (double)div_num;
}
