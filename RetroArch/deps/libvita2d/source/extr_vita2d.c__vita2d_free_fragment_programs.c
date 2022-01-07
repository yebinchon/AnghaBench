
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int textureTint; int texture; int color; } ;
typedef TYPE_1__ vita2d_fragment_programs ;


 int sceGxmShaderPatcherReleaseFragmentProgram (int ,int ) ;
 int shaderPatcher ;

__attribute__((used)) static void _vita2d_free_fragment_programs(vita2d_fragment_programs *out)
{
 sceGxmShaderPatcherReleaseFragmentProgram(shaderPatcher, out->color);
 sceGxmShaderPatcherReleaseFragmentProgram(shaderPatcher, out->texture);
 sceGxmShaderPatcherReleaseFragmentProgram(shaderPatcher, out->textureTint);
}
