
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int WA0; } ;
typedef TYPE_1__ scudspregs_struct ;


 int dsp_dma02 (TYPE_1__*,int ) ;

void dsp_dma06(scudspregs_struct *sc, u32 inst)
{
    u32 saveWa0 = sc->WA0;
    dsp_dma02(sc, inst);
    sc->WA0 = saveWa0;
}
