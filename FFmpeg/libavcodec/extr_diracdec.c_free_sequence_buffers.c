
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__* data; } ;
struct TYPE_10__ {int mcscratch; int mctmp; int edge_emu_buffer_base; int blmotion; int sbsplit; scalar_t__ buffer_stride; TYPE_3__* plane; int delay_frames; int ref_frames; TYPE_1__* all_frames; } ;
struct TYPE_8__ {int tmp; int buf_base; } ;
struct TYPE_9__ {TYPE_2__ idwt; } ;
struct TYPE_7__ {int ** hpel_base; int interpolated; TYPE_6__* avframe; } ;
typedef TYPE_4__ DiracContext ;


 int MAX_FRAMES ;
 int av_frame_unref (TYPE_6__*) ;
 int av_freep (int *) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void free_sequence_buffers(DiracContext *s)
{
    int i, j, k;

    for (i = 0; i < MAX_FRAMES; i++) {
        if (s->all_frames[i].avframe->data[0]) {
            av_frame_unref(s->all_frames[i].avframe);
            memset(s->all_frames[i].interpolated, 0, sizeof(s->all_frames[i].interpolated));
        }

        for (j = 0; j < 3; j++)
            for (k = 1; k < 4; k++)
                av_freep(&s->all_frames[i].hpel_base[j][k]);
    }

    memset(s->ref_frames, 0, sizeof(s->ref_frames));
    memset(s->delay_frames, 0, sizeof(s->delay_frames));

    for (i = 0; i < 3; i++) {
        av_freep(&s->plane[i].idwt.buf_base);
        av_freep(&s->plane[i].idwt.tmp);
    }

    s->buffer_stride = 0;
    av_freep(&s->sbsplit);
    av_freep(&s->blmotion);
    av_freep(&s->edge_emu_buffer_base);

    av_freep(&s->mctmp);
    av_freep(&s->mcscratch);
}
