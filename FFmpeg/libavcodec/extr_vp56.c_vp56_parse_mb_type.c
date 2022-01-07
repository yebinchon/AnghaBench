
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t VP56mb ;
typedef int VP56RangeCoder ;
struct TYPE_5__ {int c; TYPE_1__* modelp; } ;
typedef TYPE_2__ VP56Context ;
struct TYPE_4__ {int *** mb_type; } ;


 int ff_vp56_pmbt_tree ;
 scalar_t__ vp56_rac_get_prob_branchy (int *,int ) ;
 size_t vp56_rac_get_tree (int *,int ,int *) ;

__attribute__((used)) static VP56mb vp56_parse_mb_type(VP56Context *s,
                                 VP56mb prev_type, int ctx)
{
    uint8_t *mb_type_model = s->modelp->mb_type[ctx][prev_type];
    VP56RangeCoder *c = &s->c;

    if (vp56_rac_get_prob_branchy(c, mb_type_model[0]))
        return prev_type;
    else
        return vp56_rac_get_tree(c, ff_vp56_pmbt_tree, mb_type_model);
}
