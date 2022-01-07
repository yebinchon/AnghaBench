
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int table; } ;
typedef int GetBitContext ;


 int VLC_BITS ;
 int get_sbits (int *,int) ;
 int get_vlc2 (int *,int ,int ,int) ;
 TYPE_1__ level_vlc ;

__attribute__((used)) static inline int asv1_get_level(GetBitContext *gb)
{
    int code = get_vlc2(gb, level_vlc.table, VLC_BITS, 1);

    if (code == 3)
        return get_sbits(gb, 8);
    else
        return code - 3;
}
