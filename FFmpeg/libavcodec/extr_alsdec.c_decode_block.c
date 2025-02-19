
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* shift_lsbs; unsigned int block_length; unsigned int* raw_samples; scalar_t__* const_block; } ;
typedef int ALSDecContext ;
typedef TYPE_1__ ALSBlockData ;


 int decode_const_block_data (int *,TYPE_1__*) ;
 int decode_var_block_data (int *,TYPE_1__*) ;

__attribute__((used)) static int decode_block(ALSDecContext *ctx, ALSBlockData *bd)
{
    unsigned int smp;
    int ret = 0;


    if (*bd->const_block)
        decode_const_block_data(ctx, bd);
    else
        ret = decode_var_block_data(ctx, bd);

    if (ret < 0)
        return ret;



    if (*bd->shift_lsbs)
        for (smp = 0; smp < bd->block_length; smp++)
            bd->raw_samples[smp] = (unsigned)bd->raw_samples[smp] << *bd->shift_lsbs;

    return 0;
}
