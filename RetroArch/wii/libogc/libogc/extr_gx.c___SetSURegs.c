
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
typedef int u16 ;
struct TYPE_2__ {int* texMapSize; int* texMapWrap; int* suSsize; int* suTsize; } ;


 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (size_t,int,int) ;
 void* _SHIFTR (int,int,int) ;
 TYPE_1__* __gx ;

__attribute__((used)) static void __SetSURegs(u8 texmap,u8 texcoord)
{
 u32 reg;
 u16 wd,ht;
 u8 wrap_s,wrap_t;

 wd = __gx->texMapSize[texmap]&0x3ff;
 ht = _SHIFTR(__gx->texMapSize[texmap],10,10);
 wrap_s = __gx->texMapWrap[texmap]&3;
 wrap_t = _SHIFTR(__gx->texMapWrap[texmap],2,2);

 reg = (texcoord&0x7);
 __gx->suSsize[reg] = (__gx->suSsize[reg]&~0x0000ffff)|wd;
 __gx->suTsize[reg] = (__gx->suTsize[reg]&~0x0000ffff)|ht;
 __gx->suSsize[reg] = (__gx->suSsize[reg]&~0x00010000)|(_SHIFTL(wrap_s,16,1));
 __gx->suTsize[reg] = (__gx->suTsize[reg]&~0x00010000)|(_SHIFTL(wrap_t,16,1));

 GX_LOAD_BP_REG(__gx->suSsize[reg]);
 GX_LOAD_BP_REG(__gx->suTsize[reg]);
}
