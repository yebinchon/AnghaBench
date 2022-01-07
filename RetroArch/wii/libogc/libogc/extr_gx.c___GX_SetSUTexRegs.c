
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int genMode; int* tevRasOrder; int texCoordManually; int* tevTexMap; int tevTexCoordEnable; } ;






 int _SHIFTL (int,int,int) ;
 int _SHIFTR (int,int,int) ;
 int __SetSURegs (int,int) ;
 TYPE_1__* __gx ;

__attribute__((used)) static void __GX_SetSUTexRegs()
{
 u32 i;
 u32 indtev,dirtev;
 u8 texcoord,texmap;
 u32 tevreg,tevm,texcm;

 dirtev = (_SHIFTR(__gx->genMode,10,4))+1;
 indtev = _SHIFTR(__gx->genMode,16,3);


 for(i=0;i<indtev;i++) {
  switch(i) {
   case 131:
    texmap = __gx->tevRasOrder[2]&7;
    texcoord = _SHIFTR(__gx->tevRasOrder[2],3,3);
    break;
   case 130:
    texmap = _SHIFTR(__gx->tevRasOrder[2],6,3);
    texcoord = _SHIFTR(__gx->tevRasOrder[2],9,3);
    break;
   case 129:
    texmap = _SHIFTR(__gx->tevRasOrder[2],12,3);
    texcoord = _SHIFTR(__gx->tevRasOrder[2],15,3);
    break;
   case 128:
    texmap = _SHIFTR(__gx->tevRasOrder[2],18,3);
    texcoord = _SHIFTR(__gx->tevRasOrder[2],21,3);
    break;
   default:
    texmap = 0;
    texcoord = 0;
    break;
  }

  texcm = _SHIFTL(1,texcoord,1);
  if(!(__gx->texCoordManually&texcm))
   __SetSURegs(texmap,texcoord);
 }


 for(i=0;i<dirtev;i++) {
  tevreg = 3+(_SHIFTR(i,1,3));
  texmap = (__gx->tevTexMap[i]&0xff);

  if(i&1) texcoord = _SHIFTR(__gx->tevRasOrder[tevreg],15,3);
  else texcoord = _SHIFTR(__gx->tevRasOrder[tevreg],3,3);

  tevm = _SHIFTL(1,i,1);
  texcm = _SHIFTL(1,texcoord,1);
  if(texmap!=0xff && (__gx->tevTexCoordEnable&tevm) && !(__gx->texCoordManually&texcm)) {
   __SetSURegs(texmap,texcoord);
  }
 }
}
