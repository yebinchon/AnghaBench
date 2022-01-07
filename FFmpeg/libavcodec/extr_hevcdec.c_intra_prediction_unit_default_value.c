
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* sps; } ;
struct TYPE_15__ {int * tab_ipm; TYPE_3__ ps; TYPE_1__* ref; TYPE_6__* HEVClc; } ;
struct TYPE_12__ {scalar_t__ pred_mode; } ;
struct TYPE_14__ {TYPE_4__ cu; } ;
struct TYPE_13__ {int pred_flag; } ;
struct TYPE_10__ {int log2_min_pu_size; int min_pu_width; } ;
struct TYPE_9__ {TYPE_5__* tab_mvf; } ;
typedef TYPE_5__ MvField ;
typedef TYPE_6__ HEVCLocalContext ;
typedef TYPE_7__ HEVCContext ;


 int INTRA_DC ;
 scalar_t__ MODE_INTRA ;
 int PF_INTRA ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void intra_prediction_unit_default_value(HEVCContext *s,
                                                int x0, int y0,
                                                int log2_cb_size)
{
    HEVCLocalContext *lc = s->HEVClc;
    int pb_size = 1 << log2_cb_size;
    int size_in_pus = pb_size >> s->ps.sps->log2_min_pu_size;
    int min_pu_width = s->ps.sps->min_pu_width;
    MvField *tab_mvf = s->ref->tab_mvf;
    int x_pu = x0 >> s->ps.sps->log2_min_pu_size;
    int y_pu = y0 >> s->ps.sps->log2_min_pu_size;
    int j, k;

    if (size_in_pus == 0)
        size_in_pus = 1;
    for (j = 0; j < size_in_pus; j++)
        memset(&s->tab_ipm[(y_pu + j) * min_pu_width + x_pu], INTRA_DC, size_in_pus);
    if (lc->cu.pred_mode == MODE_INTRA)
        for (j = 0; j < size_in_pus; j++)
            for (k = 0; k < size_in_pus; k++)
                tab_mvf[(y_pu + j) * min_pu_width + x_pu + k].pred_flag = PF_INTRA;
}
