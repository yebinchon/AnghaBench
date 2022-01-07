
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dirtyState; int genMode; int* texCoordGen; int* texCoordGen2; } ;


 int GX_LOAD_XF_REG (int,int) ;
 int _SHIFTR (int,int,int) ;
 TYPE_1__* __gx ;

__attribute__((used)) static void __GX_SetTexCoordGen()
{
 u32 i,mask;
 u32 texcoord;

 if(__gx->dirtyState&0x02000000) GX_LOAD_XF_REG(0x103f,(__gx->genMode&0xf));

 i = 0;
 texcoord = 0x1040;
 mask = _SHIFTR(__gx->dirtyState,16,8);
 while(mask) {
  if(mask&0x0001) {
   GX_LOAD_XF_REG(texcoord,__gx->texCoordGen[i]);
   GX_LOAD_XF_REG((texcoord+0x10),__gx->texCoordGen2[i]);
  }
  mask >>= 1;
  texcoord++;
  i++;
 }
}
