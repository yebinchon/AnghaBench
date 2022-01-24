#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  def_prob ;
typedef  int /*<<< orphan*/  VP56RangeCoder ;
struct TYPE_8__ {int** coeff_dccv; int** coeff_runv; int**** coeff_ract; int /*<<< orphan*/ *** coeff_dcct; int /*<<< orphan*/ * coeff_reorder; } ;
typedef  TYPE_2__ VP56Model ;
struct TYPE_9__ {int* nb_null; int /*<<< orphan*/ *** ract_vlc; int /*<<< orphan*/ * runv_vlc; int /*<<< orphan*/ * dccv_vlc; scalar_t__ use_huffman; TYPE_1__** frames; TYPE_2__* modelp; int /*<<< orphan*/  c; } ;
typedef  TYPE_3__ VP56Context ;
struct TYPE_7__ {scalar_t__ key_frame; } ;

/* Variables and functions */
 size_t VP56_FRAME_CURRENT ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/ * vp6_coeff_reorder_pct ; 
 int*** vp6_dccv_lc ; 
 int /*<<< orphan*/ ** vp6_dccv_pct ; 
 int /*<<< orphan*/  vp6_huff_coeff_map ; 
 int /*<<< orphan*/  vp6_huff_run_map ; 
 int /*<<< orphan*/ **** vp6_ract_pct ; 
 int /*<<< orphan*/ ** vp6_runv_pct ; 

__attribute__((used)) static int FUNC8(VP56Context *s)
{
    VP56RangeCoder *c = &s->c;
    VP56Model *model = s->modelp;
    int def_prob[11];
    int node, cg, ctx, pos;
    int ct;    /* code type */
    int pt;    /* plane type (0 for Y, 1 for U or V) */

    FUNC1(def_prob, 0x80, sizeof(def_prob));

    for (pt=0; pt<2; pt++)
        for (node=0; node<11; node++)
            if (FUNC3(c, vp6_dccv_pct[pt][node])) {
                def_prob[node] = FUNC5(c, 7);
                model->coeff_dccv[pt][node] = def_prob[node];
            } else if (s->frames[VP56_FRAME_CURRENT]->key_frame) {
                model->coeff_dccv[pt][node] = def_prob[node];
            }

    if (FUNC2(c)) {
        for (pos=1; pos<64; pos++)
            if (FUNC3(c, vp6_coeff_reorder_pct[pos]))
                model->coeff_reorder[pos] = FUNC4(c, 4);
        FUNC7(s);
    }

    for (cg=0; cg<2; cg++)
        for (node=0; node<14; node++)
            if (FUNC3(c, vp6_runv_pct[cg][node]))
                model->coeff_runv[cg][node] = FUNC5(c, 7);

    for (ct=0; ct<3; ct++)
        for (pt=0; pt<2; pt++)
            for (cg=0; cg<6; cg++)
                for (node=0; node<11; node++)
                    if (FUNC3(c, vp6_ract_pct[ct][pt][cg][node])) {
                        def_prob[node] = FUNC5(c, 7);
                        model->coeff_ract[pt][ct][cg][node] = def_prob[node];
                    } else if (s->frames[VP56_FRAME_CURRENT]->key_frame) {
                        model->coeff_ract[pt][ct][cg][node] = def_prob[node];
                    }

    if (s->use_huffman) {
        for (pt=0; pt<2; pt++) {
            if (FUNC6(s, model->coeff_dccv[pt],
                                    vp6_huff_coeff_map, 12, &s->dccv_vlc[pt]))
                return -1;
            if (FUNC6(s, model->coeff_runv[pt],
                                    vp6_huff_run_map, 9, &s->runv_vlc[pt]))
                return -1;
            for (ct=0; ct<3; ct++)
                for (cg = 0; cg < 6; cg++)
                    if (FUNC6(s, model->coeff_ract[pt][ct][cg],
                                            vp6_huff_coeff_map, 12,
                                            &s->ract_vlc[pt][ct][cg]))
                        return -1;
        }
        FUNC1(s->nb_null, 0, sizeof(s->nb_null));
    } else {
    /* coeff_dcct is a linear combination of coeff_dccv */
    for (pt=0; pt<2; pt++)
        for (ctx=0; ctx<3; ctx++)
            for (node=0; node<5; node++)
                model->coeff_dcct[pt][ctx][node] = FUNC0(((model->coeff_dccv[pt][node] * vp6_dccv_lc[ctx][node][0] + 128) >> 8) + vp6_dccv_lc[ctx][node][1], 1, 255);
    }
    return 0;
}