
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int table; } ;
typedef int GetBitContext ;


 int MPC7_DSCF_BITS ;
 TYPE_1__ dscf_vlc ;
 int get_bits (int *,int) ;
 int get_vlc2 (int *,int ,int ,int) ;

__attribute__((used)) static int get_scale_idx(GetBitContext *gb, int ref)
{
    int t = get_vlc2(gb, dscf_vlc.table, MPC7_DSCF_BITS, 1) - 7;
    if (t == 8)
        return get_bits(gb, 6);
    return ref + t;
}
