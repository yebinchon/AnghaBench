
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef enum TwinVQFrameType { ____Placeholder_TwinVQFrameType } TwinVQFrameType ;
struct TYPE_3__ {int* n_div; int* bits_main_spec_change; int *** bits_main_spec; } ;
typedef TYPE_1__ TwinVQContext ;
typedef int GetBitContext ;


 void* get_bits (int *,int ) ;

__attribute__((used)) static void read_cb_data(TwinVQContext *tctx, GetBitContext *gb,
                         uint8_t *dst, enum TwinVQFrameType ftype)
{
    int i;

    for (i = 0; i < tctx->n_div[ftype]; i++) {
        int bs_second_part = (i >= tctx->bits_main_spec_change[ftype]);

        *dst++ = get_bits(gb, tctx->bits_main_spec[0][ftype][bs_second_part]);
        *dst++ = get_bits(gb, tctx->bits_main_spec[1][ftype][bs_second_part]);
    }
}
