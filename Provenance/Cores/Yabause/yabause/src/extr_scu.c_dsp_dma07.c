
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int RA0; } ;
typedef TYPE_1__ scudspregs_struct ;


 int dsp_dma03 (TYPE_1__*,int ) ;

void dsp_dma07(scudspregs_struct *sc, u32 inst)
{
    u32 saveRa0 = sc->RA0;
    dsp_dma03(sc, inst);
    sc->RA0 = saveRa0;

}
