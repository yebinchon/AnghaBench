
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int vcdLo; int vcdNrms; int vcdHi; } ;


 int GX_LOAD_XF_REG (int,int) ;
 int _SHIFTL (int,int,int) ;
 TYPE_1__* __gx ;

__attribute__((used)) static void __GX_XfVtxSpecs()
{
 u32 xfvtxspecs = 0;
 u32 nrms,texs,cols;

 cols = 0;
 if(__gx->vcdLo&0x6000) cols++;
 if(__gx->vcdLo&0x18000) cols++;

 nrms = 0;
 if(__gx->vcdNrms==1) nrms = 1;
 else if(__gx->vcdNrms==2) nrms = 2;

 texs = 0;
 if(__gx->vcdHi&0x3) texs++;
 if(__gx->vcdHi&0xc) texs++;
 if(__gx->vcdHi&0x30) texs++;
 if(__gx->vcdHi&0xc0) texs++;
 if(__gx->vcdHi&0x300) texs++;
 if(__gx->vcdHi&0xc00) texs++;
 if(__gx->vcdHi&0x3000) texs++;
 if(__gx->vcdHi&0xc000) texs++;

 xfvtxspecs = (_SHIFTL(texs,4,4))|(_SHIFTL(nrms,2,2))|(cols&0x3);
 GX_LOAD_XF_REG(0x1008,xfvtxspecs);
}
