
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_5__ {scalar_t__ T0; } ;
struct TYPE_6__ {TYPE_1__ part; } ;
struct TYPE_7__ {size_t* CT; int** MD; int WA0; TYPE_2__ ProgControlPort; } ;
typedef TYPE_3__ scudspregs_struct ;


 int MappedMemoryWriteLong (int,int) ;

void dsp_dma02(scudspregs_struct *sc, u32 inst)
{
    u32 imm = ((inst & 0xFF));
    u8 sel = ((inst >> 8) & 0x03);
    u8 addr = sc->CT[sel];
    u8 add;
    u32 i;

    switch (((inst >> 15) & 0x07))
    {
    case 0: add = 0; break;
    case 1: add = 1; break;
    case 2: add = 2; break;
    case 3: add = 4; break;
    case 4: add = 8; break;
    case 5: add = 16; break;
    case 6: add = 32; break;
    case 7: add = 64; break;
    }

    if (add != 1)
    {
        for ( i = 0; i < imm; i++)
        {
            u32 Val = sc->MD[sel][sc->CT[sel]];
            u32 Adr = (sc->WA0 << 2);

            MappedMemoryWriteLong(Adr, Val);
            sc->CT[sel]++;
            sc->WA0 += add >> 1;
            sc->CT[sel] &= 0x3F;
        }
    }
    else{

        for ( i = 0; i < imm; i++)
        {
            u32 Val = sc->MD[sel][sc->CT[sel]];
            u32 Adr = (sc->WA0 << 2);

            MappedMemoryWriteLong(Adr, Val);
            sc->CT[sel]++;
            sc->CT[sel] &= 0x3F;
            sc->WA0 += 1;
        }

    }
    sc->ProgControlPort.part.T0 = 0;
}
