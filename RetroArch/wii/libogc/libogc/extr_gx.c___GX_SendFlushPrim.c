
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int xfFlush; int xfFlushExp; } ;
struct TYPE_3__ {int U8; int U16; scalar_t__ U32; } ;


 TYPE_2__* __gx ;
 TYPE_1__* wgPipe ;

__attribute__((used)) static void __GX_SendFlushPrim()
{
 u32 tmp,tmp2,cnt;

 tmp = (__gx->xfFlush*__gx->xfFlushExp);

 wgPipe->U8 = 0x98;
 wgPipe->U16 = __gx->xfFlush;

 tmp2 = (tmp+3)/4;
 if(tmp>0) {
  cnt = tmp2/8;
  while(cnt) {
   wgPipe->U32 = 0;
     wgPipe->U32 = 0;
     wgPipe->U32 = 0;
     wgPipe->U32 = 0;
     wgPipe->U32 = 0;
     wgPipe->U32 = 0;
     wgPipe->U32 = 0;
     wgPipe->U32 = 0;
     cnt--;
  }
  tmp2 &= 0x0007;
  if(tmp2) {
   while(tmp2) {
    wgPipe->U32 = 0;
       tmp2--;
   }
  }
 }
 __gx->xfFlush = 1;
}
