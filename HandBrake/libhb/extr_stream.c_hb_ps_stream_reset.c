
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int scr; scalar_t__ found_scr; } ;
struct TYPE_5__ {int need_keyframe; scalar_t__ errors; scalar_t__ frames; TYPE_1__ pes; } ;
typedef TYPE_2__ hb_stream_t ;


 int AV_NOPTS_VALUE ;

void hb_ps_stream_reset(hb_stream_t *stream)
{
    stream->need_keyframe = 1;

    stream->pes.found_scr = 0;
    stream->pes.scr = AV_NOPTS_VALUE;

    stream->frames = 0;
    stream->errors = 0;
}
