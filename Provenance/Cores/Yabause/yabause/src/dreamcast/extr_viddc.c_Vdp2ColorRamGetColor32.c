
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ColorMode; } ;


 int SAT2YAB2_32 (int,int,int) ;
 int SAT2YAB32 (int,int) ;
 int T2ReadWord (int ,int) ;
 int Vdp2ColorRam ;
 TYPE_1__ Vdp2Internal ;

__attribute__((used)) static u32 Vdp2ColorRamGetColor32(u32 colorindex, int alpha) {
    switch(Vdp2Internal.ColorMode) {
        case 0:
        case 1:
        {
            u32 tmp;
            colorindex <<= 1;
            tmp = T2ReadWord(Vdp2ColorRam, colorindex & 0xFFF);
            return SAT2YAB32(alpha, tmp);
        }
        case 2:
        {
            u32 tmp1, tmp2;
            colorindex <<= 2;
            colorindex &= 0xFFF;
            tmp1 = T2ReadWord(Vdp2ColorRam, colorindex);
            tmp2 = T2ReadWord(Vdp2ColorRam, colorindex+2);
            return SAT2YAB2_32(alpha, tmp1, tmp2);
        }
        default:
            break;
    }

    return 0;
}
