
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int peCntrl; } ;


 int GX_LOAD_BP_REG (int ) ;
 TYPE_1__* __gx ;

void GX_PixModeSync()
{
 GX_LOAD_BP_REG(__gx->peCntrl);
}
