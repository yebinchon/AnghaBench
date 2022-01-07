
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int den; } ;
typedef TYPE_1__ hb_rational_t ;
struct TYPE_6__ {int width; int height; } ;
typedef TYPE_2__ hb_geometry_t ;
 int HB_COLR_PRI_BT2020 ;
 int HB_COLR_PRI_BT470M ;
 int HB_COLR_PRI_BT709 ;
 int HB_COLR_PRI_EBUTECH ;
 int HB_COLR_PRI_FILM ;
 int HB_COLR_PRI_JEDEC_P22 ;
 int HB_COLR_PRI_SMPTE428 ;
 int HB_COLR_PRI_SMPTE431 ;
 int HB_COLR_PRI_SMPTE432 ;
 int HB_COLR_PRI_SMPTEC ;

__attribute__((used)) static int get_color_prim(int color_primaries, hb_geometry_t geometry, hb_rational_t rate)
{
    switch (color_primaries)
    {
        case 135:
            return HB_COLR_PRI_BT709;
        case 136:
            return HB_COLR_PRI_BT470M;
        case 137:
            return HB_COLR_PRI_EBUTECH;
        case 132:
        case 131:
            return HB_COLR_PRI_SMPTEC;
        case 134:
            return HB_COLR_PRI_FILM;
        case 130:
            return HB_COLR_PRI_SMPTE428;
        case 129:
            return HB_COLR_PRI_SMPTE431;
        case 128:
            return HB_COLR_PRI_SMPTE432;
        case 133:
            return HB_COLR_PRI_JEDEC_P22;
        case 138:
            return HB_COLR_PRI_BT2020;
        default:
        {
            if ((geometry.width >= 1280 || geometry.height >= 720)||
                (geometry.width > 720 && geometry.height > 576 ))

                return HB_COLR_PRI_BT709;
            else if (rate.den == 1080000)

                return HB_COLR_PRI_EBUTECH;
            else

                return HB_COLR_PRI_SMPTEC;
        }
    }
}
