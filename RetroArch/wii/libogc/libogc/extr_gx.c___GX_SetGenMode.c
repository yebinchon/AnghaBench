
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ xfFlush; int genMode; } ;


 int GX_LOAD_BP_REG (int ) ;
 TYPE_1__* __gx ;

__attribute__((used)) static void __GX_SetGenMode()
{
 GX_LOAD_BP_REG(__gx->genMode);
 __gx->xfFlush = 0;
}
