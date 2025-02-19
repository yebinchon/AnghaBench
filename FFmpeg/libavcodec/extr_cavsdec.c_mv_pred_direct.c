
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t ref; unsigned int x; unsigned int dist; unsigned int y; } ;
typedef TYPE_1__ cavs_vector ;
struct TYPE_7__ {unsigned int* direct_den; unsigned int* dist; } ;
typedef TYPE_2__ AVSContext ;


 int FF_SIGNBIT (unsigned int) ;
 int MV_BWD_OFFS ;

__attribute__((used)) static inline void mv_pred_direct(AVSContext *h, cavs_vector *pmv_fw,
                                  cavs_vector *col_mv)
{
    cavs_vector *pmv_bw = pmv_fw + MV_BWD_OFFS;
    unsigned den = h->direct_den[col_mv->ref];
    int m = FF_SIGNBIT(col_mv->x);

    pmv_fw->dist = h->dist[1];
    pmv_bw->dist = h->dist[0];
    pmv_fw->ref = 1;
    pmv_bw->ref = 0;

    pmv_fw->x = (((den + (den * col_mv->x * pmv_fw->dist ^ m) - m - 1) >> 14) ^ m) - m;
    pmv_bw->x = m - (((den + (den * col_mv->x * pmv_bw->dist ^ m) - m - 1) >> 14) ^ m);
    m = FF_SIGNBIT(col_mv->y);
    pmv_fw->y = (((den + (den * col_mv->y * pmv_fw->dist ^ m) - m - 1) >> 14) ^ m) - m;
    pmv_bw->y = m - (((den + (den * col_mv->y * pmv_bw->dist ^ m) - m - 1) >> 14) ^ m);
}
