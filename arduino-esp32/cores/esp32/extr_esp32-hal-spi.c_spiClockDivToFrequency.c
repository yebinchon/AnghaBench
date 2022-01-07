
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ spiClk_t ;


 int ClkRegToFreq (TYPE_1__*) ;
 int getApbFrequency () ;

uint32_t spiClockDivToFrequency(uint32_t clockDiv)
{
    uint32_t apb_freq = getApbFrequency();
    spiClk_t reg = { clockDiv };
    return ClkRegToFreq(&reg);
}
