
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct __gx_texregion {int tmem_even; int tmem_odd; int ismipmap; int iscached; } ;
typedef int GXTexRegion ;





 int _SHIFTL (int,int,int) ;
 int _SHIFTR (int,int,int) ;

void GX_InitTexCacheRegion(GXTexRegion *region,u8 is32bmipmap,u32 tmem_even,u8 size_even,u32 tmem_odd,u8 size_odd)
{
 u32 sze = 0;
 struct __gx_texregion *ptr = (struct __gx_texregion*)region;

 switch(size_even) {
  case 129:
   sze = 3;
   break;
  case 130:
   sze = 4;
   break;
  case 128:
   sze = 5;
   break;
  default:
   sze = 3;
   break;
 }
 ptr->tmem_even = 0;
 ptr->tmem_even = (ptr->tmem_even&~0x7fff)|(_SHIFTR(tmem_even,5,15));
 ptr->tmem_even = (ptr->tmem_even&~0x38000)|(_SHIFTL(sze,15,3));
 ptr->tmem_even = (ptr->tmem_even&~0x1C0000)|(_SHIFTL(sze,18,3));

 switch(size_odd) {
  case 129:
   sze = 3;
   break;
  case 130:
   sze = 4;
   break;
  case 128:
   sze = 5;
   break;
  default:
   sze = 3;
   break;
 }
 ptr->tmem_odd = 0;
 ptr->tmem_odd = (ptr->tmem_odd&~0x7fff)|(_SHIFTR(tmem_odd,5,15));
 ptr->tmem_odd = (ptr->tmem_odd&~0x38000)|(_SHIFTL(sze,15,3));
 ptr->tmem_odd = (ptr->tmem_odd&~0x1C0000)|(_SHIFTL(sze,18,3));

 ptr->ismipmap = is32bmipmap;
 ptr->iscached = 1;
}
