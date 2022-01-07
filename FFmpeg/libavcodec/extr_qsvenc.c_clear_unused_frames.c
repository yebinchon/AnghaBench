
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ format; } ;
struct TYPE_10__ {TYPE_3__* work_frames; } ;
struct TYPE_7__ {int Locked; } ;
struct TYPE_8__ {TYPE_1__ Data; } ;
struct TYPE_9__ {struct TYPE_9__* next; scalar_t__ used; TYPE_6__* frame; int enc_ctrl; TYPE_2__ surface; } ;
typedef TYPE_3__ QSVFrame ;
typedef TYPE_4__ QSVEncContext ;


 scalar_t__ AV_PIX_FMT_QSV ;
 int av_frame_unref (TYPE_6__*) ;
 int free_encoder_ctrl_payloads (int *) ;

__attribute__((used)) static void clear_unused_frames(QSVEncContext *q)
{
    QSVFrame *cur = q->work_frames;
    while (cur) {
        if (cur->used && !cur->surface.Data.Locked) {
            free_encoder_ctrl_payloads(&cur->enc_ctrl);
            if (cur->frame->format == AV_PIX_FMT_QSV) {
                av_frame_unref(cur->frame);
            }
            cur->used = 0;
        }
        cur = cur->next;
    }
}
