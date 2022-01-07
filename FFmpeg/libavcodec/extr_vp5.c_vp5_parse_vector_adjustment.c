
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int x; int y; } ;
typedef TYPE_1__ VP56mv ;
typedef int VP56RangeCoder ;
struct TYPE_7__ {int * vector_pdv; int ** vector_pdi; int * vector_sig; int * vector_dct; } ;
typedef TYPE_2__ VP56Model ;
struct TYPE_8__ {TYPE_2__* modelp; int c; } ;
typedef TYPE_3__ VP56Context ;


 int ff_vp56_pva_tree ;
 int vp56_rac_get_prob (int *,int ) ;
 scalar_t__ vp56_rac_get_prob_branchy (int *,int ) ;
 int vp56_rac_get_tree (int *,int ,int ) ;

__attribute__((used)) static void vp5_parse_vector_adjustment(VP56Context *s, VP56mv *vect)
{
    VP56RangeCoder *c = &s->c;
    VP56Model *model = s->modelp;
    int comp, di;

    for (comp=0; comp<2; comp++) {
        int delta = 0;
        if (vp56_rac_get_prob_branchy(c, model->vector_dct[comp])) {
            int sign = vp56_rac_get_prob(c, model->vector_sig[comp]);
            di = vp56_rac_get_prob(c, model->vector_pdi[comp][0]);
            di |= vp56_rac_get_prob(c, model->vector_pdi[comp][1]) << 1;
            delta = vp56_rac_get_tree(c, ff_vp56_pva_tree,
                                      model->vector_pdv[comp]);
            delta = di | (delta << 2);
            delta = (delta ^ -sign) + sign;
        }
        if (!comp)
            vect->x = delta;
        else
            vect->y = delta;
    }
}
