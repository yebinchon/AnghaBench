
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int packet_count; int ts_per_packet; scalar_t__ video_stream; int f; } ;
typedef TYPE_1__ ModPlugContext ;
typedef TYPE_2__ AVFormatContext ;


 int ModPlug_Seek (int ,int) ;

__attribute__((used)) static int modplug_read_seek(AVFormatContext *s, int stream_idx, int64_t ts, int flags)
{
    ModPlugContext *modplug = s->priv_data;
    ModPlug_Seek(modplug->f, (int)ts);
    if (modplug->video_stream)
        modplug->packet_count = ts / modplug->ts_per_packet;
    return 0;
}
