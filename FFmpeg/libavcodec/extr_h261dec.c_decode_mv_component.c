
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int table; } ;
typedef int GetBitContext ;


 int H261_MV_VLC_BITS ;
 int get_bits1 (int *) ;
 int get_vlc2 (int *,int ,int ,int) ;
 TYPE_1__ h261_mv_vlc ;
 int* mvmap ;

__attribute__((used)) static int decode_mv_component(GetBitContext *gb, int v)
{
    int mv_diff = get_vlc2(gb, h261_mv_vlc.table, H261_MV_VLC_BITS, 2);


    if (mv_diff < 0)
        return v;

    mv_diff = mvmap[mv_diff];

    if (mv_diff && !get_bits1(gb))
        mv_diff = -mv_diff;

    v += mv_diff;
    if (v <= -16)
        v += 32;
    else if (v >= 16)
        v -= 32;

    return v;
}
