
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int chroma_format; scalar_t__ swap_uv; int ** pblocks; int * block; } ;
typedef TYPE_1__ MpegEncContext ;


 int exchange_uv (TYPE_1__*) ;

void ff_xvmc_pack_pblocks(MpegEncContext *s, int cbp)
{
    int i, j = 0;
    const int mb_block_count = 4 + (1 << s->chroma_format);

    cbp <<= 12-mb_block_count;
    for (i = 0; i < mb_block_count; i++) {
        if (cbp & (1 << 11))
            s->pblocks[i] = &s->block[j++];
        else
            s->pblocks[i] = ((void*)0);
        cbp += cbp;
    }
    if (s->swap_uv) {
        exchange_uv(s);
    }
}
