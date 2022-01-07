
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int table; } ;
struct TYPE_7__ {int** block; TYPE_1__ hqa_cbp_vlc; } ;
typedef TYPE_2__ HQContext ;
typedef int GetBitContext ;
typedef int AVFrame ;


 int AVERROR_INVALIDDATA ;
 int get_bits1 (int *) ;
 int get_bits_left (int *) ;
 int get_vlc2 (int *,int ,int,int) ;
 int hq_decode_block (TYPE_2__*,int *,int*,int,int,int) ;
 int memset (int*,int ,int) ;
 int put_blocks (TYPE_2__*,int *,int,int,int,int,int*,int*) ;

__attribute__((used)) static int hqa_decode_mb(HQContext *c, AVFrame *pic, int qgroup,
                         GetBitContext *gb, int x, int y)
{
    int flag = 0;
    int i, ret, cbp;

    if (get_bits_left(gb) < 1)
        return AVERROR_INVALIDDATA;

    cbp = get_vlc2(gb, c->hqa_cbp_vlc.table, 5, 1);

    for (i = 0; i < 12; i++)
        memset(c->block[i], 0, sizeof(*c->block));
    for (i = 0; i < 12; i++)
        c->block[i][0] = -128 * (1 << 6);

    if (cbp) {
        flag = get_bits1(gb);

        cbp |= cbp << 4;
        if (cbp & 0x3)
            cbp |= 0x500;
        if (cbp & 0xC)
            cbp |= 0xA00;
        for (i = 0; i < 12; i++) {
            if (!(cbp & (1 << i)))
                continue;
            ret = hq_decode_block(c, gb, c->block[i], qgroup, i >= 8, 1);
            if (ret < 0)
                return ret;
        }
    }

    put_blocks(c, pic, 3, x, y, flag, c->block[ 0], c->block[ 2]);
    put_blocks(c, pic, 3, x + 8, y, flag, c->block[ 1], c->block[ 3]);
    put_blocks(c, pic, 0, x, y, flag, c->block[ 4], c->block[ 6]);
    put_blocks(c, pic, 0, x + 8, y, flag, c->block[ 5], c->block[ 7]);
    put_blocks(c, pic, 2, x >> 1, y, flag, c->block[ 8], c->block[ 9]);
    put_blocks(c, pic, 1, x >> 1, y, flag, c->block[10], c->block[11]);

    return 0;
}
