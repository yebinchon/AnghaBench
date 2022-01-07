
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int ColorMode; } ;


 int SAT2YAB1 (int ) ;
 int SAT2YAB2 (int ,int ) ;
 int T2ReadWord (int ,int) ;
 int Vdp2ColorRam ;
 TYPE_1__ Vdp2Internal ;

__attribute__((used)) static uint16 Vdp2ColorRamGetColor(u32 colorindex) {
    u16 tmp;

    switch(Vdp2Internal.ColorMode) {
        case 0:
        case 1:
        {
            colorindex <<= 1;
            tmp = T2ReadWord(Vdp2ColorRam, colorindex & 0xFFF);
            return SAT2YAB1(tmp) | 0x8000;
        }
        case 2:
        {
            u16 tmp2;
            colorindex <<= 2;
            colorindex &= 0xFFF;
            tmp = T2ReadWord(Vdp2ColorRam, colorindex);
            tmp2 = T2ReadWord(Vdp2ColorRam, colorindex+2);
            return SAT2YAB2(tmp, tmp2) | 0x8000;
        }
        default:
            break;
    }

    return 0;
}
