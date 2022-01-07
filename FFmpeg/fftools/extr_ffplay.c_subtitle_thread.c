
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* avctx; int pkt_serial; } ;
struct TYPE_9__ {int subpq; TYPE_5__ subdec; } ;
typedef TYPE_2__ VideoState ;
struct TYPE_12__ {scalar_t__ format; double pts; } ;
struct TYPE_10__ {double pts; TYPE_6__ sub; scalar_t__ uploaded; int height; int width; int serial; } ;
struct TYPE_8__ {int height; int width; } ;
typedef TYPE_3__ Frame ;


 double AV_NOPTS_VALUE ;
 scalar_t__ AV_TIME_BASE ;
 int avsubtitle_free (TYPE_6__*) ;
 int decoder_decode_frame (TYPE_5__*,int *,TYPE_6__*) ;
 TYPE_3__* frame_queue_peek_writable (int *) ;
 int frame_queue_push (int *) ;

__attribute__((used)) static int subtitle_thread(void *arg)
{
    VideoState *is = arg;
    Frame *sp;
    int got_subtitle;
    double pts;

    for (;;) {
        if (!(sp = frame_queue_peek_writable(&is->subpq)))
            return 0;

        if ((got_subtitle = decoder_decode_frame(&is->subdec, ((void*)0), &sp->sub)) < 0)
            break;

        pts = 0;

        if (got_subtitle && sp->sub.format == 0) {
            if (sp->sub.pts != AV_NOPTS_VALUE)
                pts = sp->sub.pts / (double)AV_TIME_BASE;
            sp->pts = pts;
            sp->serial = is->subdec.pkt_serial;
            sp->width = is->subdec.avctx->width;
            sp->height = is->subdec.avctx->height;
            sp->uploaded = 0;


            frame_queue_push(&is->subpq);
        } else if (got_subtitle) {
            avsubtitle_free(&sp->sub);
        }
    }
    return 0;
}
