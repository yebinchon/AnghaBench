
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HB_COLR_PRI_BT2020 ;
 int HB_COLR_PRI_BT470M ;
 int HB_COLR_PRI_BT709 ;
 int HB_COLR_PRI_EBUTECH ;
 int HB_COLR_PRI_FILM ;
 int HB_COLR_PRI_JEDEC_P22 ;
 int HB_COLR_PRI_SMPTE240M ;
 int HB_COLR_PRI_SMPTE428 ;
 int HB_COLR_PRI_SMPTE431 ;
 int HB_COLR_PRI_SMPTE432 ;
 int HB_COLR_PRI_SMPTEC ;
 int HB_COLR_PRI_UNDEF ;

int hb_colr_pri_ff_to_hb(int colr_prim)
{
    switch (colr_prim)
    {
        case 138:
            return HB_COLR_PRI_BT709;
        case 139:
            return HB_COLR_PRI_BT470M;
        case 140:
            return HB_COLR_PRI_EBUTECH;
        case 133:
            return HB_COLR_PRI_SMPTEC;
        case 132:
            return HB_COLR_PRI_SMPTE240M;
        case 137:
            return HB_COLR_PRI_FILM;
        case 141:
            return HB_COLR_PRI_BT2020;
        case 131:
            return HB_COLR_PRI_SMPTE428;
        case 130:
            return HB_COLR_PRI_SMPTE431;
        case 129:
            return HB_COLR_PRI_SMPTE432;
        case 136:
            return HB_COLR_PRI_JEDEC_P22;
        default:
        case 135:
        case 134:
        case 128:
            return HB_COLR_PRI_UNDEF;
    }
}
