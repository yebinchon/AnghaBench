
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVColorSpace { ____Placeholder_AVColorSpace } AVColorSpace ;
 int ZIMG_MATRIX_170M ;
 int ZIMG_MATRIX_2020_CL ;
 int ZIMG_MATRIX_2020_NCL ;
 int ZIMG_MATRIX_240M ;
 int ZIMG_MATRIX_470BG ;
 int ZIMG_MATRIX_709 ;
 int ZIMG_MATRIX_CHROMATICITY_DERIVED_CL ;
 int ZIMG_MATRIX_CHROMATICITY_DERIVED_NCL ;
 int ZIMG_MATRIX_FCC ;
 int ZIMG_MATRIX_ICTCP ;
 int ZIMG_MATRIX_RGB ;
 int ZIMG_MATRIX_UNSPECIFIED ;
 int ZIMG_MATRIX_YCGCO ;

__attribute__((used)) static int convert_matrix(enum AVColorSpace colorspace)
{
    switch (colorspace) {
    case 132:
        return ZIMG_MATRIX_RGB;
    case 137:
        return ZIMG_MATRIX_709;
    case 129:
        return ZIMG_MATRIX_UNSPECIFIED;
    case 134:
        return ZIMG_MATRIX_FCC;
    case 138:
        return ZIMG_MATRIX_470BG;
    case 131:
        return ZIMG_MATRIX_170M;
    case 130:
        return ZIMG_MATRIX_240M;
    case 128:
        return ZIMG_MATRIX_YCGCO;
    case 139:
        return ZIMG_MATRIX_2020_NCL;
    case 140:
        return ZIMG_MATRIX_2020_CL;
    case 135:
        return ZIMG_MATRIX_CHROMATICITY_DERIVED_NCL;
    case 136:
        return ZIMG_MATRIX_CHROMATICITY_DERIVED_CL;
    case 133:
        return ZIMG_MATRIX_ICTCP;
    }
    return ZIMG_MATRIX_UNSPECIFIED;
}
