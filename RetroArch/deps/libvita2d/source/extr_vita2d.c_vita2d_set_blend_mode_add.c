
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int textureTint; int texture; int color; } ;
typedef TYPE_1__ vita2d_fragment_programs ;
struct TYPE_4__ {TYPE_1__ blend_mode_normal; TYPE_1__ blend_mode_add; } ;


 int _vita2d_colorFragmentProgram ;
 TYPE_2__ _vita2d_fragmentPrograms ;
 int _vita2d_textureFragmentProgram ;
 int _vita2d_textureTintFragmentProgram ;

void vita2d_set_blend_mode_add(int enable)
{
 vita2d_fragment_programs *in = enable ? &_vita2d_fragmentPrograms.blend_mode_add
     : &_vita2d_fragmentPrograms.blend_mode_normal;

 _vita2d_colorFragmentProgram = in->color;
 _vita2d_textureFragmentProgram = in->texture;
 _vita2d_textureTintFragmentProgram = in->textureTint;
}
