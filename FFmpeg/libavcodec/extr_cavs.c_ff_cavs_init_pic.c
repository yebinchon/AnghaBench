
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* f; } ;
struct TYPE_7__ {int l_stride; int c_stride; int* luma_scan; scalar_t__ flags; scalar_t__ mbidx; scalar_t__ mby; scalar_t__ mbx; TYPE_2__ cur; int cv; int cu; int cy; int * pred_mode_Y; void** mv; } ;
struct TYPE_5__ {int* linesize; int * data; } ;
typedef TYPE_3__ AVSContext ;


 int BLK_16X16 ;
 size_t MV_BWD_X0 ;
 size_t MV_FWD_X0 ;
 int NOT_AVAIL ;
 void* ff_cavs_dir_mv ;
 int set_mvs (void**,int ) ;
 void* un_mv ;

int ff_cavs_init_pic(AVSContext *h)
{
    int i;


    for (i = 0; i <= 20; i += 4)
        h->mv[i] = un_mv;
    h->mv[MV_BWD_X0] = ff_cavs_dir_mv;
    set_mvs(&h->mv[MV_BWD_X0], BLK_16X16);
    h->mv[MV_FWD_X0] = ff_cavs_dir_mv;
    set_mvs(&h->mv[MV_FWD_X0], BLK_16X16);
    h->pred_mode_Y[3] = h->pred_mode_Y[6] = NOT_AVAIL;
    h->cy = h->cur.f->data[0];
    h->cu = h->cur.f->data[1];
    h->cv = h->cur.f->data[2];
    h->l_stride = h->cur.f->linesize[0];
    h->c_stride = h->cur.f->linesize[1];
    h->luma_scan[2] = 8 * h->l_stride;
    h->luma_scan[3] = 8 * h->l_stride + 8;
    h->mbx = h->mby = h->mbidx = 0;
    h->flags = 0;

    return 0;
}
