
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {TYPE_1__* channel; } ;
struct TYPE_3__ {int duty; } ;


 int SD_MUTEX_LOCK () ;
 int SD_MUTEX_UNLOCK () ;
 TYPE_2__ SIGMADELTA ;

uint8_t sigmaDeltaRead(uint8_t channel)
{
    if(channel > 7) {
        return 0;
    }
    SD_MUTEX_LOCK();
    uint8_t duty = SIGMADELTA.channel[channel].duty + 128;
    SD_MUTEX_UNLOCK();
    return duty;
}
