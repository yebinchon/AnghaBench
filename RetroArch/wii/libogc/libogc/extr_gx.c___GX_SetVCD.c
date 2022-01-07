
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vcdHi; int vcdLo; } ;


 int GX_LOAD_CP_REG (int,int ) ;
 int __GX_XfVtxSpecs () ;
 TYPE_1__* __gx ;

__attribute__((used)) static void __GX_SetVCD()
{
 GX_LOAD_CP_REG(0x50,__gx->vcdLo);
 GX_LOAD_CP_REG(0x60,__gx->vcdHi);
 __GX_XfVtxSpecs();
}
