
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vita2d_texture ;


 int SCE_GXM_TEXTURE_FORMAT_A8B8G8R8 ;
 int * vita2d_create_empty_texture_format (unsigned int,unsigned int,int ) ;

vita2d_texture *vita2d_create_empty_texture(unsigned int w, unsigned int h)
{
 return vita2d_create_empty_texture_format(w, h, SCE_GXM_TEXTURE_FORMAT_A8B8G8R8);
}
