
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {unsigned int num_channels; TYPE_1__* cur_restart_header; } ;
struct TYPE_8__ {unsigned int count; scalar_t__* fbits; scalar_t__* outch; scalar_t__** coeff; } ;
struct TYPE_7__ {unsigned int min_channel; unsigned int max_channel; } ;
typedef TYPE_1__ RestartHeader ;
typedef TYPE_2__ MatrixParams ;
typedef TYPE_3__ MLPEncodeContext ;



__attribute__((used)) static int compare_matrix_params(MLPEncodeContext *ctx, const MatrixParams *prev, const MatrixParams *mp)
{
    RestartHeader *rh = ctx->cur_restart_header;
    unsigned int channel, mat;

    if (prev->count != mp->count)
        return 1;

    if (!prev->count)
        return 0;

    for (channel = rh->min_channel; channel <= rh->max_channel; channel++)
        if (prev->fbits[channel] != mp->fbits[channel])
            return 1;

    for (mat = 0; mat < mp->count; mat++) {
        if (prev->outch[mat] != mp->outch[mat])
            return 1;

        for (channel = 0; channel < ctx->num_channels; channel++)
            if (prev->coeff[mat][channel] != mp->coeff[mat][channel])
                return 1;
    }

    return 0;
}
