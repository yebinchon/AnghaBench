
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct __gx_texregion {int tmem_even; int tmem_odd; int size_even; int size_odd; scalar_t__ iscached; scalar_t__ ismipmap; } ;
typedef int GXTexRegion ;


 int _SHIFTR (int ,int,int) ;

void GX_InitTexPreloadRegion(GXTexRegion *region,u32 tmem_even,u32 size_even,u32 tmem_odd,u32 size_odd)
{
 struct __gx_texregion *ptr = (struct __gx_texregion*)region;

 ptr->tmem_even = 0;
 ptr->tmem_even = (ptr->tmem_even&~0x7FFF)|(_SHIFTR(tmem_even,5,15));
 ptr->tmem_even = (ptr->tmem_even&~0x200000)|0x200000;

 ptr->tmem_odd = 0;
 ptr->tmem_odd = (ptr->tmem_odd&~0x7FFF)|(_SHIFTR(tmem_odd,5,15));

 ptr->size_even = _SHIFTR(size_even,5,16);
 ptr->size_odd = _SHIFTR(size_odd,5,16);

 ptr->ismipmap = 0;
 ptr->iscached = 0;
}
