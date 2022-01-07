
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int touch_meas_done; } ;
struct TYPE_4__ {TYPE_1__ sar_touch_chn_st; } ;


 TYPE_2__ SENS ;

bool touch_pad_meas_is_done(void)
{
    return SENS.sar_touch_chn_st.touch_meas_done;
}
