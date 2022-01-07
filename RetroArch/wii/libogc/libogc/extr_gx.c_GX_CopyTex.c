
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int peZMode; int peCMode0; int peCntrl; int texCopyTL; int texCopyWH; int texCopyDst; int texCopyCntrl; scalar_t__ texCopyZTex; } ;


 int GX_LOAD_BP_REG (int) ;
 int MEM_VIRTUAL_TO_PHYSICAL (void*) ;
 int _SHIFTL (int,int,int) ;
 int _SHIFTR (int ,int,int) ;
 TYPE_1__* __gx ;

void GX_CopyTex(void *dest,u8 clear)
{
 u8 clflag;
 u32 val;

 if(clear) {
  val = (__gx->peZMode&~0xf)|0xf;
  GX_LOAD_BP_REG(val);
  val = (__gx->peCMode0&~0x3);
  GX_LOAD_BP_REG(val);
 }

 clflag = 0;
 val = __gx->peCntrl;
 if(__gx->texCopyZTex && (val&0x7)!=0x0003) {
  clflag = 1;
  val = (val&~0x7)|0x0003;
 }
 if(clear || (val&0x7)==0x0003) {
  if(val&0x40) {
   clflag = 1;
   val = (val&~0x40);
  }
 }
 if(clflag) GX_LOAD_BP_REG(val);

 val = 0x4b000000|(_SHIFTR(MEM_VIRTUAL_TO_PHYSICAL(dest),5,24));

 GX_LOAD_BP_REG(__gx->texCopyTL);
 GX_LOAD_BP_REG(__gx->texCopyWH);
 GX_LOAD_BP_REG(__gx->texCopyDst);
 GX_LOAD_BP_REG(val);

 __gx->texCopyCntrl = (__gx->texCopyCntrl&~0x800)|(_SHIFTL(clear,11,1));
 __gx->texCopyCntrl = (__gx->texCopyCntrl&~0x4000);
 __gx->texCopyCntrl = (__gx->texCopyCntrl&~0xff000000)|(_SHIFTL(0x52,24,8));
 GX_LOAD_BP_REG(__gx->texCopyCntrl);

 if(clear) {
  GX_LOAD_BP_REG(__gx->peZMode);
  GX_LOAD_BP_REG(__gx->peCMode0);
 }
 if(clflag) GX_LOAD_BP_REG(__gx->peCntrl);
}
