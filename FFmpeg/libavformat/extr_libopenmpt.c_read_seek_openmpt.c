
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int module; } ;
typedef TYPE_1__ OpenMPTContext ;
typedef TYPE_2__ AVFormatContext ;


 double AV_TIME_BASE ;
 int openmpt_module_set_position_seconds (int ,double) ;

__attribute__((used)) static int read_seek_openmpt(AVFormatContext *s, int stream_idx, int64_t ts, int flags)
{
    OpenMPTContext *openmpt = s->priv_data;
    openmpt_module_set_position_seconds(openmpt->module, (double)ts/AV_TIME_BASE);
    return 0;
}
