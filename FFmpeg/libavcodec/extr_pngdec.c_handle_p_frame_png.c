
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_10__ {TYPE_1__* f; } ;
struct TYPE_9__ {int format; scalar_t__** data; } ;
struct TYPE_8__ {int width; int bpp; int height; int image_linesize; TYPE_6__ last_picture; } ;
struct TYPE_7__ {scalar_t__** data; } ;
typedef TYPE_2__ PNGDecContext ;
typedef TYPE_3__ AVFrame ;


 int FFMIN (int ,int) ;
 int INT_MAX ;
 int av_image_get_linesize (int ,int,int ) ;
 int ff_thread_await_progress (TYPE_6__*,int ,int ) ;

__attribute__((used)) static void handle_p_frame_png(PNGDecContext *s, AVFrame *p)
{
    int i, j;
    uint8_t *pd = p->data[0];
    uint8_t *pd_last = s->last_picture.f->data[0];
    int ls = FFMIN(av_image_get_linesize(p->format, s->width, 0), s->width * s->bpp);

    ff_thread_await_progress(&s->last_picture, INT_MAX, 0);
    for (j = 0; j < s->height; j++) {
        for (i = 0; i < ls; i++)
            pd[i] += pd_last[i];
        pd += s->image_linesize;
        pd_last += s->image_linesize;
    }
}
