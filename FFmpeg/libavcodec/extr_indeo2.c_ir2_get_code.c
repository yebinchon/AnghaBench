
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int table; } ;
typedef int GetBitContext ;


 int CODE_VLC_BITS ;
 int get_vlc2 (int *,int ,int ,int) ;
 TYPE_1__ ir2_vlc ;

__attribute__((used)) static inline int ir2_get_code(GetBitContext *gb)
{
    return get_vlc2(gb, ir2_vlc.table, CODE_VLC_BITS, 1) + 1;
}
