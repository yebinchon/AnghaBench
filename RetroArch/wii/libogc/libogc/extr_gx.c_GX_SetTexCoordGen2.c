
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int* texCoordGen; int* texCoordGen2; int mtxIdxLo; int mtxIdxHi; int dirtyState; } ;


 scalar_t__ GX_DTTMTX0 ;
 int GX_MAXCOORD ;
 int GX_TG_BUMP0 ;
 int GX_TG_BUMP7 ;


 int GX_TG_MTX2x4 ;
 int GX_TG_MTX3x4 ;


 int GX_TG_SRTG ;
 scalar_t__ GX_TG_TEXCOORD0 ;
 int _SHIFTL (int,int,int) ;
 TYPE_1__* __gx ;

void GX_SetTexCoordGen2(u16 texcoord,u32 tgen_typ,u32 tgen_src,u32 mtxsrc,u32 normalize,u32 postmtx)
{
 u32 txc;
 u32 texcoords;
 u8 vtxrow,stq;

 if(texcoord>=GX_MAXCOORD) return;

 stq = 0;
 switch(tgen_src) {
  case 137:
   vtxrow = 0;
   stq = 1;
   break;
  case 138:
   vtxrow = 1;
   stq = 1;
   break;
  case 141:
   vtxrow = 3;
   stq = 1;
   break;
  case 136:
   vtxrow = 4;
   stq = 1;
   break;
  case 140:
   vtxrow = 2;
   break;
  case 139:
   vtxrow = 2;
   break;
  case 135:
   vtxrow = 5;
   break;
  case 134:
   vtxrow = 6;
   break;
  case 133:
   vtxrow = 7;
   break;
  case 132:
   vtxrow = 8;
   break;
  case 131:
   vtxrow = 9;
   break;
  case 130:
   vtxrow = 10;
   break;
  case 129:
   vtxrow = 11;
   break;
  case 128:
   vtxrow = 12;
   break;
  default:
   vtxrow = 5;
   break;
 }

 texcoords = 0;
 txc = (texcoord&7);
 if((tgen_typ==GX_TG_MTX3x4 || tgen_typ==GX_TG_MTX2x4))
 {
  if(tgen_typ==GX_TG_MTX3x4) texcoords = 0x02;

  texcoords |= (_SHIFTL(stq,2,1));
  texcoords |= (_SHIFTL(vtxrow,7,5));
 } else if((tgen_typ>=GX_TG_BUMP0 && tgen_typ<=GX_TG_BUMP7))
 {
  tgen_src -= GX_TG_TEXCOORD0;
  tgen_typ -= GX_TG_BUMP0;

  texcoords = 0x10;
  texcoords |= (_SHIFTL(stq,2,1));
  texcoords |= (_SHIFTL(vtxrow,7,5));
  texcoords |= (_SHIFTL(tgen_src,12,3));
  texcoords |= (_SHIFTL(tgen_typ,15,3));
 } else if(tgen_typ==GX_TG_SRTG) {
  if(tgen_src==140) texcoords = 0x20;
  else if(tgen_src==139) texcoords = 0x30;
  texcoords |= (_SHIFTL(stq,2,1));
  texcoords |= (_SHIFTL(2,7,5));
 }

 postmtx -= GX_DTTMTX0;
 __gx->texCoordGen[txc] = texcoords;
 __gx->texCoordGen2[txc] = ((_SHIFTL(normalize,8,1))|(postmtx&0x3f));

 switch(texcoord) {
  case 149:
   __gx->mtxIdxLo = (__gx->mtxIdxLo&~0xfc0)|(_SHIFTL(mtxsrc,6,6));
   break;
  case 148:
   __gx->mtxIdxLo = (__gx->mtxIdxLo&~0x3f000)|(_SHIFTL(mtxsrc,12,6));
   break;
  case 147:
   __gx->mtxIdxLo = (__gx->mtxIdxLo&~0xfc0000)|(_SHIFTL(mtxsrc,18,6));
   break;
  case 146:
   __gx->mtxIdxLo = (__gx->mtxIdxLo&~0x3f000000)|(_SHIFTL(mtxsrc,24,6));
   break;
  case 145:
   __gx->mtxIdxHi = (__gx->mtxIdxHi&~0x3f)|(mtxsrc&0x3f);
   break;
  case 144:
   __gx->mtxIdxHi = (__gx->mtxIdxHi&~0xfc0)|(_SHIFTL(mtxsrc,6,6));
   break;
  case 143:
   __gx->mtxIdxHi = (__gx->mtxIdxHi&~0x3f000)|(_SHIFTL(mtxsrc,12,6));
   break;
  case 142:
   __gx->mtxIdxHi = (__gx->mtxIdxHi&~0xfc0000)|(_SHIFTL(mtxsrc,18,6));
   break;
 }
 __gx->dirtyState |= (0x04000000|(0x00010000<<texcoord));
}
