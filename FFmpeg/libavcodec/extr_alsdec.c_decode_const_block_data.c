
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int block_length; int * raw_samples; } ;
typedef int ALSDecContext ;
typedef TYPE_1__ ALSBlockData ;



__attribute__((used)) static void decode_const_block_data(ALSDecContext *ctx, ALSBlockData *bd)
{
    int smp = bd->block_length - 1;
    int32_t val = *bd->raw_samples;
    int32_t *dst = bd->raw_samples + 1;


    for (; smp; smp--)
        *dst++ = val;
}
