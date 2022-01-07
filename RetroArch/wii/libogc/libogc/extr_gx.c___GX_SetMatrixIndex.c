
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mtxIdxHi; int mtxIdxLo; } ;


 int GX_LOAD_CP_REG (int,int ) ;
 int GX_LOAD_XF_REG (int,int ) ;
 TYPE_1__* __gx ;

__attribute__((used)) static void __GX_SetMatrixIndex(u32 mtx)
{
 if(mtx<5) {
  GX_LOAD_CP_REG(0x30,__gx->mtxIdxLo);
  GX_LOAD_XF_REG(0x1018,__gx->mtxIdxLo);
 } else {
  GX_LOAD_CP_REG(0x40,__gx->mtxIdxHi);
  GX_LOAD_XF_REG(0x1019,__gx->mtxIdxHi);
 }
}
