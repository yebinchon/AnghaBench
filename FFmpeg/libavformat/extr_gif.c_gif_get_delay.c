
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ pts; } ;
struct TYPE_6__ {int duration; scalar_t__ last_delay; } ;
typedef TYPE_1__ GIFContext ;
typedef TYPE_2__ AVPacket ;


 scalar_t__ AV_NOPTS_VALUE ;
 int av_clip_uint16 (scalar_t__) ;

__attribute__((used)) static int gif_get_delay(GIFContext *gif, AVPacket *prev, AVPacket *new)
{
    if (new && new->pts != AV_NOPTS_VALUE)
        gif->duration = av_clip_uint16(new->pts - prev->pts);
    else if (!new && gif->last_delay >= 0)
        gif->duration = gif->last_delay;

    return gif->duration;
}
