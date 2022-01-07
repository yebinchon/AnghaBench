
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t dac_channel_t ;
struct TYPE_4__ {TYPE_1__* pad_dac; } ;
struct TYPE_3__ {int dac_xpd_force; int xpd_dac; } ;


 size_t DAC_CHANNEL_1 ;
 TYPE_2__ RTCIO ;

__attribute__((used)) static inline void dac_output_set_enable(dac_channel_t channel, bool enable)
{
    RTCIO.pad_dac[channel-DAC_CHANNEL_1].dac_xpd_force = enable;
    RTCIO.pad_dac[channel-DAC_CHANNEL_1].xpd_dac = enable;
}
