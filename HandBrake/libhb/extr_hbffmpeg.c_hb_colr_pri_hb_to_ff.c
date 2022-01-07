
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVCOL_PRI_BT2020 ;
 int AVCOL_PRI_BT470BG ;
 int AVCOL_PRI_BT470M ;
 int AVCOL_PRI_BT709 ;
 int AVCOL_PRI_JEDEC_P22 ;
 int AVCOL_PRI_SMPTE170M ;
 int AVCOL_PRI_SMPTE240M ;
 int AVCOL_PRI_SMPTE428 ;
 int AVCOL_PRI_SMPTE431 ;
 int AVCOL_PRI_SMPTE432 ;
 int AVCOL_PRI_UNSPECIFIED ;
int hb_colr_pri_hb_to_ff(int colr_prim)
{
    switch (colr_prim)
    {
        case 136:
            return AVCOL_PRI_BT709;
        case 135:
            return AVCOL_PRI_BT470BG;
        case 137:
            return AVCOL_PRI_BT470M;
        case 129:
            return AVCOL_PRI_SMPTE170M;
        case 133:
            return AVCOL_PRI_SMPTE240M;
        case 138:
            return AVCOL_PRI_BT2020;
        case 132:
            return AVCOL_PRI_SMPTE428;
        case 131:
            return AVCOL_PRI_SMPTE431;
        case 130:
            return AVCOL_PRI_SMPTE432;
        case 134:
            return AVCOL_PRI_JEDEC_P22;
        default:
        case 128:
            return AVCOL_PRI_UNSPECIFIED;
    }
}
