
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int def_prob ;
typedef int VP56RangeCoder ;
struct TYPE_8__ {int** coeff_dccv; int** coeff_runv; int**** coeff_ract; int *** coeff_dcct; int * coeff_reorder; } ;
typedef TYPE_2__ VP56Model ;
struct TYPE_9__ {int* nb_null; int *** ract_vlc; int * runv_vlc; int * dccv_vlc; scalar_t__ use_huffman; TYPE_1__** frames; TYPE_2__* modelp; int c; } ;
typedef TYPE_3__ VP56Context ;
struct TYPE_7__ {scalar_t__ key_frame; } ;


 size_t VP56_FRAME_CURRENT ;
 int av_clip (int,int,int) ;
 int memset (int*,int,int) ;
 scalar_t__ vp56_rac_get (int *) ;
 scalar_t__ vp56_rac_get_prob_branchy (int *,int ) ;
 int vp56_rac_gets (int *,int) ;
 void* vp56_rac_gets_nn (int *,int) ;
 scalar_t__ vp6_build_huff_tree (TYPE_3__*,int*,int ,int,int *) ;
 int vp6_coeff_order_table_init (TYPE_3__*) ;
 int * vp6_coeff_reorder_pct ;
 int*** vp6_dccv_lc ;
 int ** vp6_dccv_pct ;
 int vp6_huff_coeff_map ;
 int vp6_huff_run_map ;
 int **** vp6_ract_pct ;
 int ** vp6_runv_pct ;

__attribute__((used)) static int vp6_parse_coeff_models(VP56Context *s)
{
    VP56RangeCoder *c = &s->c;
    VP56Model *model = s->modelp;
    int def_prob[11];
    int node, cg, ctx, pos;
    int ct;
    int pt;

    memset(def_prob, 0x80, sizeof(def_prob));

    for (pt=0; pt<2; pt++)
        for (node=0; node<11; node++)
            if (vp56_rac_get_prob_branchy(c, vp6_dccv_pct[pt][node])) {
                def_prob[node] = vp56_rac_gets_nn(c, 7);
                model->coeff_dccv[pt][node] = def_prob[node];
            } else if (s->frames[VP56_FRAME_CURRENT]->key_frame) {
                model->coeff_dccv[pt][node] = def_prob[node];
            }

    if (vp56_rac_get(c)) {
        for (pos=1; pos<64; pos++)
            if (vp56_rac_get_prob_branchy(c, vp6_coeff_reorder_pct[pos]))
                model->coeff_reorder[pos] = vp56_rac_gets(c, 4);
        vp6_coeff_order_table_init(s);
    }

    for (cg=0; cg<2; cg++)
        for (node=0; node<14; node++)
            if (vp56_rac_get_prob_branchy(c, vp6_runv_pct[cg][node]))
                model->coeff_runv[cg][node] = vp56_rac_gets_nn(c, 7);

    for (ct=0; ct<3; ct++)
        for (pt=0; pt<2; pt++)
            for (cg=0; cg<6; cg++)
                for (node=0; node<11; node++)
                    if (vp56_rac_get_prob_branchy(c, vp6_ract_pct[ct][pt][cg][node])) {
                        def_prob[node] = vp56_rac_gets_nn(c, 7);
                        model->coeff_ract[pt][ct][cg][node] = def_prob[node];
                    } else if (s->frames[VP56_FRAME_CURRENT]->key_frame) {
                        model->coeff_ract[pt][ct][cg][node] = def_prob[node];
                    }

    if (s->use_huffman) {
        for (pt=0; pt<2; pt++) {
            if (vp6_build_huff_tree(s, model->coeff_dccv[pt],
                                    vp6_huff_coeff_map, 12, &s->dccv_vlc[pt]))
                return -1;
            if (vp6_build_huff_tree(s, model->coeff_runv[pt],
                                    vp6_huff_run_map, 9, &s->runv_vlc[pt]))
                return -1;
            for (ct=0; ct<3; ct++)
                for (cg = 0; cg < 6; cg++)
                    if (vp6_build_huff_tree(s, model->coeff_ract[pt][ct][cg],
                                            vp6_huff_coeff_map, 12,
                                            &s->ract_vlc[pt][ct][cg]))
                        return -1;
        }
        memset(s->nb_null, 0, sizeof(s->nb_null));
    } else {

    for (pt=0; pt<2; pt++)
        for (ctx=0; ctx<3; ctx++)
            for (node=0; node<5; node++)
                model->coeff_dcct[pt][ctx][node] = av_clip(((model->coeff_dccv[pt][node] * vp6_dccv_lc[ctx][node][0] + 128) >> 8) + vp6_dccv_lc[ctx][node][1], 1, 255);
    }
    return 0;
}
