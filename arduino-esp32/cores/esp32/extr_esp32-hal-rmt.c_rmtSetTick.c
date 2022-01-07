
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {size_t channel; } ;
typedef TYPE_4__ rmt_obj_t ;
struct TYPE_11__ {TYPE_3__* conf_ch; } ;
struct TYPE_8__ {int ref_always_on; } ;
struct TYPE_7__ {int div_cnt; } ;
struct TYPE_9__ {TYPE_2__ conf1; TYPE_1__ conf0; } ;


 TYPE_6__ RMT ;
 scalar_t__ _ABS (float) ;
 int _LIMIT (float,int) ;

float rmtSetTick(rmt_obj_t* rmt, float tick)
{
    if (!rmt) {
        return 0;
    }







    int apb_div = _LIMIT(tick/12.5, 256);
    int ref_div = _LIMIT(tick/1000, 256);

    float apb_tick = 12.5 * apb_div;
    float ref_tick = 1000.0 * ref_div;

    size_t channel = rmt->channel;

    if (_ABS(apb_tick - tick) < _ABS(ref_tick - tick)) {
        RMT.conf_ch[channel].conf0.div_cnt = apb_div & 0xFF;
        RMT.conf_ch[channel].conf1.ref_always_on = 1;
        return apb_tick;
    } else {
        RMT.conf_ch[channel].conf0.div_cnt = ref_div & 0xFF;
        RMT.conf_ch[channel].conf1.ref_always_on = 0;
        return ref_tick;
    }
}
