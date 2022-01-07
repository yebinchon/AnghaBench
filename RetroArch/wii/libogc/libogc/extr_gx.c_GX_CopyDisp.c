
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int peZMode; int peCMode0; int peCntrl; int dispCopyTL; int dispCopyWH; int dispCopyDst; int dispCopyCntrl; } ;


 int GX_LOAD_BP_REG (int) ;
 int MEM_VIRTUAL_TO_PHYSICAL (void*) ;
 int _SHIFTL (int,int,int) ;
 int _SHIFTR (int ,int,int) ;
 TYPE_1__* __gx ;

void GX_CopyDisp(void *dest,u8 clear)
{
 u8 clflag;
 u32 val;

 if(clear) {
  val= (__gx->peZMode&~0xf)|0xf;
  GX_LOAD_BP_REG(val);
  val = (__gx->peCMode0&~0x3);
  GX_LOAD_BP_REG(val);
 }

 clflag = 0;
 if(clear || (__gx->peCntrl&0x7)==0x0003) {
  if(__gx->peCntrl&0x40) {
   clflag = 1;
   val = (__gx->peCntrl&~0x40);
   GX_LOAD_BP_REG(val);
  }
 }

 GX_LOAD_BP_REG(__gx->dispCopyTL);
 GX_LOAD_BP_REG(__gx->dispCopyWH);

 GX_LOAD_BP_REG(__gx->dispCopyDst);

 val = 0x4b000000|(_SHIFTR(MEM_VIRTUAL_TO_PHYSICAL(dest),5,24));
 GX_LOAD_BP_REG(val);

 __gx->dispCopyCntrl = (__gx->dispCopyCntrl&~0x800)|(_SHIFTL(clear,11,1));
 __gx->dispCopyCntrl = (__gx->dispCopyCntrl&~0x4000)|0x4000;
 __gx->dispCopyCntrl = (__gx->dispCopyCntrl&~0xff000000)|(_SHIFTL(0x52,24,8));

 GX_LOAD_BP_REG(__gx->dispCopyCntrl);

 if(clear) {
  GX_LOAD_BP_REG(__gx->peZMode);
  GX_LOAD_BP_REG(__gx->peCMode0);
 }
 if(clflag) GX_LOAD_BP_REG(__gx->peCntrl);
}
