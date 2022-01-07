
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef enum cavs_block { ____Placeholder_cavs_block } cavs_block ;
struct TYPE_6__ {int x; int y; int dist; scalar_t__ ref; } ;
typedef TYPE_1__ cavs_vector ;
struct TYPE_7__ {int sym_factor; int * dist; } ;
typedef TYPE_2__ AVSContext ;


 int MV_BWD_OFFS ;
 int set_mvs (TYPE_1__*,int) ;

__attribute__((used)) static inline void mv_pred_sym(AVSContext *h, cavs_vector *src,
                               enum cavs_block size)
{
    cavs_vector *dst = src + MV_BWD_OFFS;


    dst->x = -((src->x * h->sym_factor + 256) >> 9);
    dst->y = -((src->y * h->sym_factor + 256) >> 9);
    dst->ref = 0;
    dst->dist = h->dist[0];
    set_mvs(dst, size);
}
