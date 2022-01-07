
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {int clk_en; } ;
struct TYPE_6__ {TYPE_2__ cg; TYPE_1__* channel; } ;
struct TYPE_4__ {int prescale; } ;


 int SD_MUTEX_LOCK () ;
 int SD_MUTEX_UNLOCK () ;
 TYPE_3__ SIGMADELTA ;
 int _on_apb_change ;
 int _sd_sys_lock ;
 int addApbChangeCallback (void*,int ) ;
 int getApbFrequency () ;
 int xSemaphoreCreateMutex () ;

uint32_t sigmaDeltaSetup(uint8_t channel, uint32_t freq)
{
    if(channel > 7) {
        return 0;
    }

    static bool tHasStarted = 0;
    if(!tHasStarted) {
        tHasStarted = 1;
        _sd_sys_lock = xSemaphoreCreateMutex();
    }

    uint32_t apb_freq = getApbFrequency();
    uint32_t prescale = (apb_freq/(freq*256)) - 1;
    if(prescale > 0xFF) {
        prescale = 0xFF;
    }
    SD_MUTEX_LOCK();
    SIGMADELTA.channel[channel].prescale = prescale;
    SIGMADELTA.cg.clk_en = 0;
    SIGMADELTA.cg.clk_en = 1;
    SD_MUTEX_UNLOCK();
    uint32_t iarg = channel;
    addApbChangeCallback((void*)iarg, _on_apb_change);
    return apb_freq/((prescale + 1) * 256);
}
