
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_channels; int** channel_residues; scalar_t__* is_channel_coded; } ;
typedef TYPE_1__ WmallDecodeCtx ;



__attribute__((used)) static void revert_inter_ch_decorr(WmallDecodeCtx *s, int tile_size)
{
    if (s->num_channels != 2)
        return;
    else if (s->is_channel_coded[0] || s->is_channel_coded[1]) {
        int icoef;
        for (icoef = 0; icoef < tile_size; icoef++) {
            s->channel_residues[0][icoef] -= s->channel_residues[1][icoef] >> 1;
            s->channel_residues[1][icoef] += s->channel_residues[0][icoef];
        }
    }
}
