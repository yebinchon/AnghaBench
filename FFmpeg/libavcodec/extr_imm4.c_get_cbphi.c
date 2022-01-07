
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bits; int table; } ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 TYPE_1__ cbphi_tab ;
 int get_vlc2 (int *,int ,int ,int) ;

__attribute__((used)) static int get_cbphi(GetBitContext *gb, int x)
{
    int value;

    value = get_vlc2(gb, cbphi_tab.table, cbphi_tab.bits, 1);
    if (value < 0)
        return AVERROR_INVALIDDATA;

    return x ? value : 15 - value;
}
