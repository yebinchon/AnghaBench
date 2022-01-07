
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct __gx_texobj {int tex_filt; } ;
typedef float f32 ;
typedef int GXTexObj ;


 int _SHIFTL (int ,int,int) ;

void GX_InitTexObjLODBias(GXTexObj *obj,f32 lodbias)
{
 struct __gx_texobj *ptr = (struct __gx_texobj*)obj;

 if(lodbias<-4.0f) lodbias = -4.0f;
 else if(lodbias==4.0f) lodbias = 3.99f;

 ptr->tex_filt = (ptr->tex_filt&~0x1fe00)|(_SHIFTL(((u32)(32.0f*lodbias)),9,8));
}
