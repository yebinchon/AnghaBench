
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ display_picture_number; } ;
struct TYPE_6__ {TYPE_1__** delay_frames; } ;
struct TYPE_5__ {TYPE_4__* avframe; int reference; } ;
typedef TYPE_1__ DiracFrame ;
typedef TYPE_2__ DiracContext ;
typedef int AVFrame ;


 int DELAYED_PIC_REF ;
 int av_frame_ref (int *,TYPE_4__*) ;

__attribute__((used)) static int get_delayed_pic(DiracContext *s, AVFrame *picture, int *got_frame)
{
    DiracFrame *out = s->delay_frames[0];
    int i, out_idx = 0;
    int ret;


    for (i = 1; s->delay_frames[i]; i++)
        if (s->delay_frames[i]->avframe->display_picture_number < out->avframe->display_picture_number) {
            out = s->delay_frames[i];
            out_idx = i;
        }

    for (i = out_idx; s->delay_frames[i]; i++)
        s->delay_frames[i] = s->delay_frames[i+1];

    if (out) {
        out->reference ^= DELAYED_PIC_REF;
        if((ret = av_frame_ref(picture, out->avframe)) < 0)
            return ret;
        *got_frame = 1;
    }

    return 0;
}
