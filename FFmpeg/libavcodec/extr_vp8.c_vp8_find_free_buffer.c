
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* f; } ;
struct TYPE_11__ {TYPE_2__ tf; } ;
typedef TYPE_3__ VP8Frame ;
struct TYPE_12__ {int avctx; TYPE_3__* frames; TYPE_3__** framep; } ;
typedef TYPE_4__ VP8Context ;
struct TYPE_9__ {scalar_t__* buf; } ;


 int AV_LOG_FATAL ;
 size_t VP56_FRAME_CURRENT ;
 size_t VP56_FRAME_GOLDEN ;
 size_t VP56_FRAME_GOLDEN2 ;
 size_t VP56_FRAME_PREVIOUS ;
 int abort () ;
 int av_log (int ,int ,char*) ;
 int vp8_release_frame (TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static VP8Frame *vp8_find_free_buffer(VP8Context *s)
{
    VP8Frame *frame = ((void*)0);
    int i;


    for (i = 0; i < 5; i++)
        if (&s->frames[i] != s->framep[VP56_FRAME_CURRENT] &&
            &s->frames[i] != s->framep[VP56_FRAME_PREVIOUS] &&
            &s->frames[i] != s->framep[VP56_FRAME_GOLDEN] &&
            &s->frames[i] != s->framep[VP56_FRAME_GOLDEN2]) {
            frame = &s->frames[i];
            break;
        }
    if (i == 5) {
        av_log(s->avctx, AV_LOG_FATAL, "Ran out of free frames!\n");
        abort();
    }
    if (frame->tf.f->buf[0])
        vp8_release_frame(s, frame);

    return frame;
}
