
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ exi_idtime; } ;


 int EXI_CHANNEL_0 ;
 int EXI_DEVICE_2 ;
 int EXI_GetID (int ,int ,int *) ;
 int __exi_probe (int) ;
 int exi_id_serport1 ;
 TYPE_1__* eximap ;
 scalar_t__* last_exi_idtime ;

void EXI_ProbeReset()
{
 last_exi_idtime[0] = 0;
 last_exi_idtime[1] = 0;

 eximap[0].exi_idtime = 0;
 eximap[1].exi_idtime = 0;

 __exi_probe(0);
 __exi_probe(1);
 EXI_GetID(EXI_CHANNEL_0,EXI_DEVICE_2,&exi_id_serport1);
}
