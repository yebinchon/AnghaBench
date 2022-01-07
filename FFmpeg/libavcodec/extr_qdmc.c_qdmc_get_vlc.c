
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bits; int table; } ;
typedef TYPE_1__ VLC ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int FF_ARRAY_ELEMS (int*) ;
 int* code_prefix ;
 int get_bits (int *,int) ;
 int get_bits_left (int *) ;
 int get_bitsz (int *,int) ;
 int get_vlc2 (int *,int ,int ,int) ;

__attribute__((used)) static int qdmc_get_vlc(GetBitContext *gb, VLC *table, int flag)
{
    int v;

    if (get_bits_left(gb) < 1)
        return AVERROR_INVALIDDATA;
    v = get_vlc2(gb, table->table, table->bits, 1);
    if (v < 0)
        return AVERROR_INVALIDDATA;
    if (v)
        v = v - 1;
    else
        v = get_bits(gb, get_bits(gb, 3) + 1);

    if (flag) {
        if (v >= FF_ARRAY_ELEMS(code_prefix))
            return AVERROR_INVALIDDATA;

        v = code_prefix[v] + get_bitsz(gb, v >> 2);
    }

    return v;
}
