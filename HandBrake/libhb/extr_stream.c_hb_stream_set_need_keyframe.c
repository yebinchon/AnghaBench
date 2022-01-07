
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hb_stream_type; int need_keyframe; int has_IDRs; } ;
typedef TYPE_1__ hb_stream_t ;


 scalar_t__ program ;
 scalar_t__ transport ;

void hb_stream_set_need_keyframe(hb_stream_t *stream, int need_keyframe)
{
    if ( stream->hb_stream_type == transport ||
         stream->hb_stream_type == program )
    {

        stream->need_keyframe = !!need_keyframe & !!stream->has_IDRs;
    }
    else
    {
        stream->need_keyframe = need_keyframe;
    }
}
