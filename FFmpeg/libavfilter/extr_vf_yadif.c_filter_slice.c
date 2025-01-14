
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_17__ {int mode; TYPE_6__* cur; int (* filter_edges ) (int *,int *,int *,int *,int,int,int,int,int) ;int (* filter_line ) (int *,int *,int *,int *,int,int,int,int,int) ;TYPE_4__* next; TYPE_3__* prev; TYPE_2__* csp; } ;
typedef TYPE_7__ YADIFContext ;
struct TYPE_18__ {size_t plane; int h; int parity; int w; int tff; TYPE_5__* frame; } ;
typedef TYPE_8__ ThreadData ;
struct TYPE_19__ {TYPE_7__* priv; } ;
struct TYPE_16__ {int* linesize; int ** data; } ;
struct TYPE_15__ {int* linesize; int ** data; } ;
struct TYPE_14__ {int ** data; } ;
struct TYPE_13__ {int ** data; } ;
struct TYPE_12__ {TYPE_1__* comp; } ;
struct TYPE_11__ {int depth; } ;
typedef TYPE_9__ AVFilterContext ;


 int MAX_ALIGN ;
 int memcpy (int *,int *,int) ;
 int stub1 (int *,int *,int *,int *,int,int,int,int,int) ;
 int stub2 (int *,int *,int *,int *,int,int,int,int,int) ;

__attribute__((used)) static int filter_slice(AVFilterContext *ctx, void *arg, int jobnr, int nb_jobs)
{
    YADIFContext *s = ctx->priv;
    ThreadData *td = arg;
    int refs = s->cur->linesize[td->plane];
    int df = (s->csp->comp[td->plane].depth + 7) / 8;
    int pix_3 = 3 * df;
    int slice_start = (td->h * jobnr ) / nb_jobs;
    int slice_end = (td->h * (jobnr+1)) / nb_jobs;
    int y;
    int edge = 3 + MAX_ALIGN / df - 1;




    for (y = slice_start; y < slice_end; y++) {
        if ((y ^ td->parity) & 1) {
            uint8_t *prev = &s->prev->data[td->plane][y * refs];
            uint8_t *cur = &s->cur ->data[td->plane][y * refs];
            uint8_t *next = &s->next->data[td->plane][y * refs];
            uint8_t *dst = &td->frame->data[td->plane][y * td->frame->linesize[td->plane]];
            int mode = y == 1 || y + 2 == td->h ? 2 : s->mode;
            s->filter_line(dst + pix_3, prev + pix_3, cur + pix_3,
                           next + pix_3, td->w - edge,
                           y + 1 < td->h ? refs : -refs,
                           y ? -refs : refs,
                           td->parity ^ td->tff, mode);
            s->filter_edges(dst, prev, cur, next, td->w,
                            y + 1 < td->h ? refs : -refs,
                            y ? -refs : refs,
                            td->parity ^ td->tff, mode);
        } else {
            memcpy(&td->frame->data[td->plane][y * td->frame->linesize[td->plane]],
                   &s->cur->data[td->plane][y * refs], td->w * df);
        }
    }
    return 0;
}
