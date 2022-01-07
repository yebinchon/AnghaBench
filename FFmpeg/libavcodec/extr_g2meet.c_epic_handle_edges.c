
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__* stack; int N_flag_rung; int stack_pos; int W_flag_rung; int unsigned_rung; int els_ctx; } ;
typedef TYPE_1__ ePICContext ;


 scalar_t__ B_shift ;
 scalar_t__ G_shift ;
 scalar_t__ R_shift ;
 scalar_t__ epic_predict_pixel (TYPE_1__*,int *,scalar_t__*,scalar_t__) ;
 scalar_t__ ff_els_decode_unsigned (int *,int *) ;

__attribute__((used)) static int epic_handle_edges(ePICContext *dc, int x, int y,
                             const uint32_t *curr_row,
                             const uint32_t *above_row, uint32_t *pPix)
{
    uint32_t pix;

    if (!x && !y) {

        *pPix = (ff_els_decode_unsigned(&dc->els_ctx, &dc->unsigned_rung) << R_shift) |
                (ff_els_decode_unsigned(&dc->els_ctx, &dc->unsigned_rung) << G_shift) |
                (ff_els_decode_unsigned(&dc->els_ctx, &dc->unsigned_rung) << B_shift);
        return 1;
    }

    if (x) {
        pix = curr_row[x - 1];
        if (epic_predict_pixel(dc, &dc->W_flag_rung, pPix, pix))
            return 1;
    }

    if (y) {
        pix = above_row[x];
        if (!dc->stack_pos || dc->stack[0] != pix) {
            if (epic_predict_pixel(dc, &dc->N_flag_rung, pPix, pix))
                return 1;
        }
    }

    return 0;
}
