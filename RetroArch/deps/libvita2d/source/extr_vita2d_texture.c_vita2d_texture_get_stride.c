
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vita2d_texture ;


 int tex_format_to_bytespp (int ) ;
 int vita2d_texture_get_format (int const*) ;
 int vita2d_texture_get_width (int const*) ;

unsigned int vita2d_texture_get_stride(const vita2d_texture *texture)
{
 return ((vita2d_texture_get_width(texture) + 7) & ~7)
  * tex_format_to_bytespp(vita2d_texture_get_format(texture));
}
