
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVColorPrimaries { ____Placeholder_AVColorPrimaries } AVColorPrimaries ;
 int ZIMG_PRIMARIES_170M ;
 int ZIMG_PRIMARIES_2020 ;
 int ZIMG_PRIMARIES_240M ;
 int ZIMG_PRIMARIES_470_BG ;
 int ZIMG_PRIMARIES_470_M ;
 int ZIMG_PRIMARIES_709 ;
 int ZIMG_PRIMARIES_EBU3213_E ;
 int ZIMG_PRIMARIES_FILM ;
 int ZIMG_PRIMARIES_ST428 ;
 int ZIMG_PRIMARIES_ST431_2 ;
 int ZIMG_PRIMARIES_ST432_1 ;
 int ZIMG_PRIMARIES_UNSPECIFIED ;

__attribute__((used)) static int convert_primaries(enum AVColorPrimaries color_primaries)
{
    switch (color_primaries) {
    case 128:
        return ZIMG_PRIMARIES_UNSPECIFIED;
    case 136:
        return ZIMG_PRIMARIES_709;
    case 137:
        return ZIMG_PRIMARIES_470_M;
    case 138:
        return ZIMG_PRIMARIES_470_BG;
    case 133:
        return ZIMG_PRIMARIES_170M;
    case 132:
        return ZIMG_PRIMARIES_240M;
    case 135:
        return ZIMG_PRIMARIES_FILM;
    case 139:
        return ZIMG_PRIMARIES_2020;
    case 131:
        return ZIMG_PRIMARIES_ST428;
    case 130:
        return ZIMG_PRIMARIES_ST431_2;
    case 129:
        return ZIMG_PRIMARIES_ST432_1;
    case 134:
        return ZIMG_PRIMARIES_EBU3213_E;
    }
    return ZIMG_PRIMARIES_UNSPECIFIED;
}
