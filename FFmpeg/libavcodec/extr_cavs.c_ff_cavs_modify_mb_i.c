
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* pred_mode_Y; int* top_pred_Y; int mbx; int flags; } ;
typedef TYPE_1__ AVSContext ;


 int A_AVAIL ;
 int B_AVAIL ;
 int left_modifier_c ;
 int left_modifier_l ;
 int modify_pred (int ,int*) ;
 int top_modifier_c ;
 int top_modifier_l ;

void ff_cavs_modify_mb_i(AVSContext *h, int *pred_mode_uv)
{

    h->pred_mode_Y[3] = h->pred_mode_Y[5];
    h->pred_mode_Y[6] = h->pred_mode_Y[8];
    h->top_pred_Y[h->mbx * 2 + 0] = h->pred_mode_Y[7];
    h->top_pred_Y[h->mbx * 2 + 1] = h->pred_mode_Y[8];


    if (!(h->flags & A_AVAIL)) {
        modify_pred(left_modifier_l, &h->pred_mode_Y[4]);
        modify_pred(left_modifier_l, &h->pred_mode_Y[7]);
        modify_pred(left_modifier_c, pred_mode_uv);
    }
    if (!(h->flags & B_AVAIL)) {
        modify_pred(top_modifier_l, &h->pred_mode_Y[4]);
        modify_pred(top_modifier_l, &h->pred_mode_Y[5]);
        modify_pred(top_modifier_c, pred_mode_uv);
    }
}
