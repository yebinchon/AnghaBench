
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* f; } ;
struct TYPE_7__ {int flags; int mbx; int mb_width; int mby; int l_stride; int c_stride; int mb_height; TYPE_2__ cur; scalar_t__ cv; scalar_t__ cu; scalar_t__ cy; int * mv; int * pred_mode_Y; int mbidx; int ** top_mv; } ;
struct TYPE_5__ {scalar_t__* data; } ;
typedef TYPE_3__ AVSContext ;


 int A_AVAIL ;
 int B_AVAIL ;
 int C_AVAIL ;
 size_t MV_BWD_X2 ;
 size_t MV_BWD_X3 ;
 size_t MV_FWD_X2 ;
 size_t MV_FWD_X3 ;
 int NOT_AVAIL ;
 int un_mv ;

int ff_cavs_next_mb(AVSContext *h)
{
    int i;

    h->flags |= A_AVAIL;
    h->cy += 16;
    h->cu += 8;
    h->cv += 8;

    for (i = 0; i <= 20; i += 4)
        h->mv[i] = h->mv[i + 2];

    h->top_mv[0][h->mbx * 2 + 0] = h->mv[MV_FWD_X2];
    h->top_mv[0][h->mbx * 2 + 1] = h->mv[MV_FWD_X3];
    h->top_mv[1][h->mbx * 2 + 0] = h->mv[MV_BWD_X2];
    h->top_mv[1][h->mbx * 2 + 1] = h->mv[MV_BWD_X3];

    h->mbidx++;
    h->mbx++;
    if (h->mbx == h->mb_width) {
        h->flags = B_AVAIL | C_AVAIL;

        h->pred_mode_Y[3] = h->pred_mode_Y[6] = NOT_AVAIL;

        for (i = 0; i <= 20; i += 4)
            h->mv[i] = un_mv;
        h->mbx = 0;
        h->mby++;

        h->cy = h->cur.f->data[0] + h->mby * 16 * h->l_stride;
        h->cu = h->cur.f->data[1] + h->mby * 8 * h->c_stride;
        h->cv = h->cur.f->data[2] + h->mby * 8 * h->c_stride;
        if (h->mby == h->mb_height) {
            return 0;
        }
    }
    return 1;
}
