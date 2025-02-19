
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int CoefType ;
typedef int CoefSumType ;


 int COEF_MAX ;
 int FFMIN (int,int) ;
 int ff_sqrt (int) ;

__attribute__((used)) static CoefType calc_cpl_coord(CoefSumType energy_ch, CoefSumType energy_cpl)
{
    if (energy_cpl <= COEF_MAX) {
        return 1048576;
    } else {
        uint64_t coord = energy_ch / (energy_cpl >> 24);
        uint32_t coord32 = FFMIN(coord, 1073741824);
        coord32 = ff_sqrt(coord32) << 9;
        return FFMIN(coord32, COEF_MAX);
    }
}
