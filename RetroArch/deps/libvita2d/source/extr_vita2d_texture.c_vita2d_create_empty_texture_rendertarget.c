
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vita2d_texture ;
typedef int SceGxmTextureFormat ;


 int * _vita2d_create_empty_texture_format_advanced (unsigned int,unsigned int,int ,int) ;

vita2d_texture * vita2d_create_empty_texture_rendertarget(unsigned int w, unsigned int h, SceGxmTextureFormat format)
{
 return _vita2d_create_empty_texture_format_advanced(w, h, format, 1);
}
