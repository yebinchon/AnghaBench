
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int patterndatasize; int addr; int specialfunction; int supplementdata; int paladdr; int flipfunction; int charaddr; int patternwh; int auxmode; int colornumber; } ;
typedef TYPE_1__ vdp2draw_struct ;
typedef int u16 ;
struct TYPE_5__ {int VRSIZE; } ;


 int T1ReadWord (int ,int) ;
 int Vdp2Ram ;
 TYPE_2__* Vdp2Regs ;

__attribute__((used)) static void Vdp2PatternAddr(vdp2draw_struct *info)
{
    switch(info->patterndatasize)
    {
        case 1:
        {
            u16 tmp = T1ReadWord(Vdp2Ram, info->addr);

            info->addr += 2;
            info->specialfunction = (info->supplementdata >> 9) & 0x1;

            switch(info->colornumber)
            {
                case 0:
                    info->paladdr = ((tmp & 0xF000) >> 8) | ((info->supplementdata & 0xE0) << 3);
                    break;
                default:
                    info->paladdr = (tmp & 0x7000) >> 4;
                    break;
            }

            switch(info->auxmode)
            {
                case 0:
                    info->flipfunction = (tmp & 0xC00) >> 10;

                    switch(info->patternwh)
                    {
                        case 1:
                            info->charaddr = (tmp & 0x3FF) | ((info->supplementdata & 0x1F) << 10);
                            break;
                        case 2:
                            info->charaddr = ((tmp & 0x3FF) << 2) | (info->supplementdata & 0x3) | ((info->supplementdata & 0x1C) << 10);
                            break;
                    }
                    break;
                case 1:
                    info->flipfunction = 0;

                    switch(info->patternwh)
                    {
                        case 1:
                            info->charaddr = (tmp & 0xFFF) | ((info->supplementdata & 0x1C) << 10);
                            break;
                        case 2:
                            info->charaddr = ((tmp & 0xFFF) << 2) | (info->supplementdata & 0x3) | ((info->supplementdata & 0x10) << 10);
                            break;
                    }
                        break;
            }

            break;
        }
        case 2: {
            u16 tmp1 = T1ReadWord(Vdp2Ram, info->addr);
            u16 tmp2 = T1ReadWord(Vdp2Ram, info->addr+2);
            info->addr += 4;
            info->charaddr = tmp2 & 0x7FFF;
            info->flipfunction = (tmp1 & 0xC000) >> 14;
            info->paladdr = (tmp1 & 0x7F) << 4;
            info->specialfunction = (tmp1 & 0x2000) >> 13;
            break;
        }
    }

    if (!(Vdp2Regs->VRSIZE & 0x8000))
        info->charaddr &= 0x3FFF;

    info->charaddr *= 0x20;
}
