
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int stack_pos; int * stack; int els_ctx; } ;
typedef TYPE_1__ ePICContext ;


 size_t EPIC_PIX_STACK_MAX ;
 scalar_t__ ff_els_decode_bit (int *,int *) ;

__attribute__((used)) static int epic_predict_pixel2(ePICContext *dc, uint8_t *rung,
                               uint32_t *pPix, uint32_t pix)
{
    if (ff_els_decode_bit(&dc->els_ctx, rung)) {
        *pPix = pix;
        return 1;
    }
    dc->stack[dc->stack_pos++ & EPIC_PIX_STACK_MAX] = pix;
    return 0;
}
