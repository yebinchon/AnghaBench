
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* f; } ;
struct TYPE_7__ {size_t mbidx; int * col_type_base; TYPE_2__ cur; void** mv; } ;
struct TYPE_5__ {scalar_t__ pict_type; } ;
typedef TYPE_3__ AVSContext ;


 scalar_t__ AV_PICTURE_TYPE_B ;
 int BLK_16X16 ;
 int I_8X8 ;
 size_t MV_BWD_X0 ;
 size_t MV_FWD_X0 ;
 void* ff_cavs_intra_mv ;
 int set_mvs (void**,int ) ;

__attribute__((used)) static inline void set_mv_intra(AVSContext *h)
{
    h->mv[MV_FWD_X0] = ff_cavs_intra_mv;
    set_mvs(&h->mv[MV_FWD_X0], BLK_16X16);
    h->mv[MV_BWD_X0] = ff_cavs_intra_mv;
    set_mvs(&h->mv[MV_BWD_X0], BLK_16X16);
    if (h->cur.f->pict_type != AV_PICTURE_TYPE_B)
        h->col_type_base[h->mbidx] = I_8X8;
}
