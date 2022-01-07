
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* sps; } ;
struct TYPE_7__ {int* qp_y_tab; TYPE_2__ ps; } ;
struct TYPE_5__ {int log2_min_cb_size; int min_cb_width; } ;
typedef TYPE_3__ HEVCContext ;



__attribute__((used)) static int get_qPy(HEVCContext *s, int xC, int yC)
{
    int log2_min_cb_size = s->ps.sps->log2_min_cb_size;
    int x = xC >> log2_min_cb_size;
    int y = yC >> log2_min_cb_size;
    return s->qp_y_tab[x + y * s->ps.sps->min_cb_width];
}
