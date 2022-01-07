
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HB_COLR_MAT_BT2020_CL ;
 int HB_COLR_MAT_BT2020_NCL ;
 int HB_COLR_MAT_BT470BG ;
 int HB_COLR_MAT_BT709 ;
 int HB_COLR_MAT_CD_CL ;
 int HB_COLR_MAT_CD_NCL ;
 int HB_COLR_MAT_FCC ;
 int HB_COLR_MAT_ICTCP ;
 int HB_COLR_MAT_RGB ;
 int HB_COLR_MAT_SMPTE170M ;
 int HB_COLR_MAT_SMPTE2085 ;
 int HB_COLR_MAT_SMPTE240M ;
 int HB_COLR_MAT_UNDEF ;
 int HB_COLR_MAT_YCGCO ;

int hb_colr_mat_ff_to_hb(int colr_mat)
{
    switch (colr_mat)
    {
        case 133:
            return HB_COLR_MAT_RGB;
        case 139:
            return HB_COLR_MAT_BT709;
        case 136:
            return HB_COLR_MAT_FCC;
        case 140:
            return HB_COLR_MAT_BT470BG;
        case 132:
            return HB_COLR_MAT_SMPTE170M;
        case 130:
            return HB_COLR_MAT_SMPTE240M;
        case 128:
            return HB_COLR_MAT_YCGCO;
        case 141:
            return HB_COLR_MAT_BT2020_NCL;
        case 142:
            return HB_COLR_MAT_BT2020_CL;
        case 131:
            return HB_COLR_MAT_SMPTE2085;
        case 137:
            return HB_COLR_MAT_CD_NCL;
        case 138:
            return HB_COLR_MAT_CD_CL;
        case 135:
            return HB_COLR_MAT_ICTCP;
        default:
        case 129:
        case 134:
            return HB_COLR_MAT_UNDEF;
    }
}
