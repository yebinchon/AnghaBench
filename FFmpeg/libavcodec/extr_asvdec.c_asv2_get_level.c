
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int8_t ;
struct TYPE_2__ {int table; } ;
typedef int GetBitContext ;


 int ASV2_LEVEL_VLC_BITS ;
 int asv2_get_bits (int *,int) ;
 TYPE_1__ asv2_level_vlc ;
 int get_vlc2 (int *,int ,int ,int) ;

__attribute__((used)) static inline int asv2_get_level(GetBitContext *gb)
{
    int code = get_vlc2(gb, asv2_level_vlc.table, ASV2_LEVEL_VLC_BITS, 1);

    if (code == 31)
        return (int8_t) asv2_get_bits(gb, 8);
    else
        return code - 31;
}
