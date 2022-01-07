
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; } ;
typedef TYPE_1__ hb_geometry_t ;
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
 int HB_COLR_MAT_SMPTE240M ;
 int HB_COLR_MAT_YCGCO ;

__attribute__((used)) static int get_color_matrix(int colorspace, hb_geometry_t geometry)
{
    switch (colorspace)
    {
        case 131:
            return HB_COLR_MAT_RGB;
        case 136:
            return HB_COLR_MAT_BT709;
        case 133:
            return HB_COLR_MAT_FCC;
        case 137:
            return HB_COLR_MAT_BT470BG;
        case 130:
            return HB_COLR_MAT_SMPTE170M;
        case 129:
            return HB_COLR_MAT_SMPTE240M;
        case 128:
            return HB_COLR_MAT_YCGCO;
        case 138:
            return HB_COLR_MAT_BT2020_NCL;
        case 139:
            return HB_COLR_MAT_BT2020_CL;
        case 134:
            return HB_COLR_MAT_CD_NCL;
        case 135:
            return HB_COLR_MAT_CD_CL;
        case 132:
            return HB_COLR_MAT_ICTCP;
        default:
        {
            if ((geometry.width >= 1280 || geometry.height >= 720)||
                (geometry.width > 720 && geometry.height > 576 ))

                return HB_COLR_MAT_BT709;
            else


                return HB_COLR_MAT_SMPTE170M;
        }
    }
}
