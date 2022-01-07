
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int mfxPayload ;
struct TYPE_10__ {TYPE_2__* work_frames; } ;
struct TYPE_8__ {void* Payload; } ;
struct TYPE_9__ {int used; TYPE_1__ enc_ctrl; int frame; struct TYPE_9__* next; } ;
typedef TYPE_2__ QSVFrame ;
typedef TYPE_3__ QSVEncContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int QSV_MAX_ENC_PAYLOAD ;
 int av_frame_alloc () ;
 int av_freep (TYPE_2__**) ;
 void* av_mallocz (int) ;
 int clear_unused_frames (TYPE_3__*) ;

__attribute__((used)) static int get_free_frame(QSVEncContext *q, QSVFrame **f)
{
    QSVFrame *frame, **last;

    clear_unused_frames(q);

    frame = q->work_frames;
    last = &q->work_frames;
    while (frame) {
        if (!frame->used) {
            *f = frame;
            frame->used = 1;
            return 0;
        }

        last = &frame->next;
        frame = frame->next;
    }

    frame = av_mallocz(sizeof(*frame));
    if (!frame)
        return AVERROR(ENOMEM);
    frame->frame = av_frame_alloc();
    if (!frame->frame) {
        av_freep(&frame);
        return AVERROR(ENOMEM);
    }
    frame->enc_ctrl.Payload = av_mallocz(sizeof(mfxPayload*) * QSV_MAX_ENC_PAYLOAD);
    if (!frame->enc_ctrl.Payload) {
        av_freep(&frame);
        return AVERROR(ENOMEM);
    }
    *last = frame;

    *f = frame;
    frame->used = 1;

    return 0;
}
