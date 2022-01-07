
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int int16_t ;
typedef enum cavs_mv_pred { ____Placeholder_cavs_mv_pred } cavs_mv_pred ;
typedef enum cavs_mv_loc { ____Placeholder_cavs_mv_loc } cavs_mv_loc ;
typedef enum cavs_block { ____Placeholder_cavs_block } cavs_block ;
struct TYPE_11__ {int ref; int x; int y; int dist; } ;
typedef TYPE_1__ cavs_vector ;
struct TYPE_12__ {int avctx; int gb; TYPE_1__* mv; int * dist; } ;
typedef TYPE_2__ AVSContext ;


 int AV_LOG_ERROR ;
 int MV_BWD_X3 ;
 int MV_FWD_X3 ;
 int MV_PRED_LEFT ;
 int MV_PRED_PSKIP ;
 int MV_PRED_TOP ;
 int MV_PRED_TOPRIGHT ;
 size_t NOT_AVAIL ;
 int av_log (int ,int ,char*,int,int) ;
 int get_se_golomb (int *) ;
 int mv_pred_median (TYPE_2__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int set_mvs (TYPE_1__*,int) ;
 TYPE_1__ un_mv ;

void ff_cavs_mv(AVSContext *h, enum cavs_mv_loc nP, enum cavs_mv_loc nC,
                enum cavs_mv_pred mode, enum cavs_block size, int ref)
{
    cavs_vector *mvP = &h->mv[nP];
    cavs_vector *mvA = &h->mv[nP-1];
    cavs_vector *mvB = &h->mv[nP-4];
    cavs_vector *mvC = &h->mv[nC];
    const cavs_vector *mvP2 = ((void*)0);

    mvP->ref = ref;
    mvP->dist = h->dist[mvP->ref];
    if (mvC->ref == NOT_AVAIL || (nP == MV_FWD_X3) || (nP == MV_BWD_X3 ))
        mvC = &h->mv[nP - 5];
    if (mode == MV_PRED_PSKIP &&
        (mvA->ref == NOT_AVAIL ||
         mvB->ref == NOT_AVAIL ||
         (mvA->x | mvA->y | mvA->ref) == 0 ||
         (mvB->x | mvB->y | mvB->ref) == 0)) {
        mvP2 = &un_mv;

    } else if (mvA->ref >= 0 && mvB->ref < 0 && mvC->ref < 0) {
        mvP2 = mvA;
    } else if (mvA->ref < 0 && mvB->ref >= 0 && mvC->ref < 0) {
        mvP2 = mvB;
    } else if (mvA->ref < 0 && mvB->ref < 0 && mvC->ref >= 0) {
        mvP2 = mvC;
    } else if (mode == MV_PRED_LEFT && mvA->ref == ref) {
        mvP2 = mvA;
    } else if (mode == MV_PRED_TOP && mvB->ref == ref) {
        mvP2 = mvB;
    } else if (mode == MV_PRED_TOPRIGHT && mvC->ref == ref) {
        mvP2 = mvC;
    }
    if (mvP2) {
        mvP->x = mvP2->x;
        mvP->y = mvP2->y;
    } else
        mv_pred_median(h, mvP, mvA, mvB, mvC);

    if (mode < MV_PRED_PSKIP) {
        int mx = get_se_golomb(&h->gb) + (unsigned)mvP->x;
        int my = get_se_golomb(&h->gb) + (unsigned)mvP->y;

        if (mx != (int16_t)mx || my != (int16_t)my) {
            av_log(h->avctx, AV_LOG_ERROR, "MV %d %d out of supported range\n", mx, my);
        } else {
            mvP->x = mx;
            mvP->y = my;
        }
    }
    set_mvs(mvP, size);
}
