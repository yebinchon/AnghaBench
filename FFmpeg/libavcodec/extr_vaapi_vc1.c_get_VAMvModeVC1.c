
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum MVModes { ____Placeholder_MVModes } MVModes ;







 int VAMvMode1Mv ;
 int VAMvMode1MvHalfPel ;
 int VAMvMode1MvHalfPelBilinear ;
 int VAMvModeIntensityCompensation ;
 int VAMvModeMixedMv ;

__attribute__((used)) static int get_VAMvModeVC1(enum MVModes mv_mode)
{
    switch (mv_mode) {
    case 130: return VAMvMode1MvHalfPelBilinear;
    case 132: return VAMvMode1Mv;
    case 131: return VAMvMode1MvHalfPel;
    case 128: return VAMvModeMixedMv;
    case 129: return VAMvModeIntensityCompensation;
    }
    return 0;
}
