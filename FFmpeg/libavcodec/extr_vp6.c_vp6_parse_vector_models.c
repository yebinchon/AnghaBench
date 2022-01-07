
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VP56RangeCoder ;
struct TYPE_4__ {void*** vector_fdv; void*** vector_pdv; void** vector_sig; void** vector_dct; } ;
typedef TYPE_1__ VP56Model ;
struct TYPE_5__ {TYPE_1__* modelp; int c; } ;
typedef TYPE_2__ VP56Context ;


 scalar_t__ vp56_rac_get_prob_branchy (int *,int ) ;
 void* vp56_rac_gets_nn (int *,int) ;
 int ** vp6_fdv_pct ;
 int ** vp6_pdv_pct ;
 int ** vp6_sig_dct_pct ;

__attribute__((used)) static void vp6_parse_vector_models(VP56Context *s)
{
    VP56RangeCoder *c = &s->c;
    VP56Model *model = s->modelp;
    int comp, node;

    for (comp=0; comp<2; comp++) {
        if (vp56_rac_get_prob_branchy(c, vp6_sig_dct_pct[comp][0]))
            model->vector_dct[comp] = vp56_rac_gets_nn(c, 7);
        if (vp56_rac_get_prob_branchy(c, vp6_sig_dct_pct[comp][1]))
            model->vector_sig[comp] = vp56_rac_gets_nn(c, 7);
    }

    for (comp=0; comp<2; comp++)
        for (node=0; node<7; node++)
            if (vp56_rac_get_prob_branchy(c, vp6_pdv_pct[comp][node]))
                model->vector_pdv[comp][node] = vp56_rac_gets_nn(c, 7);

    for (comp=0; comp<2; comp++)
        for (node=0; node<8; node++)
            if (vp56_rac_get_prob_branchy(c, vp6_fdv_pct[comp][node]))
                model->vector_fdv[comp][node] = vp56_rac_gets_nn(c, 7);
}
