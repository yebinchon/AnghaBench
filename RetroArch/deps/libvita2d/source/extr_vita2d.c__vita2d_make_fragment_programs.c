
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int textureTint; int texture; int color; } ;
typedef TYPE_1__ vita2d_fragment_programs ;
typedef int SceGxmMultisampleMode ;
typedef int SceGxmBlendInfo ;


 int SCE_GXM_OUTPUT_REGISTER_FORMAT_UCHAR4 ;
 int VITA2D_DEBUG (char*,int) ;
 int colorFragmentProgramId ;
 int colorVertexProgramGxp ;
 int sceGxmShaderPatcherCreateFragmentProgram (int ,int ,int ,int ,int const*,int ,int *) ;
 int shaderPatcher ;
 int textureFragmentProgramId ;
 int textureTintFragmentProgramId ;
 int textureVertexProgramGxp ;

__attribute__((used)) static void _vita2d_make_fragment_programs(vita2d_fragment_programs *out,
 const SceGxmBlendInfo *blend_info, SceGxmMultisampleMode msaa)
{
 int err;
 (void)err;

 err = sceGxmShaderPatcherCreateFragmentProgram(
  shaderPatcher,
  colorFragmentProgramId,
  SCE_GXM_OUTPUT_REGISTER_FORMAT_UCHAR4,
  msaa,
  blend_info,
  colorVertexProgramGxp,
  &out->color);

 VITA2D_DEBUG("color sceGxmShaderPatcherCreateFragmentProgram(): 0x%08X\n", err);

 err = sceGxmShaderPatcherCreateFragmentProgram(
  shaderPatcher,
  textureFragmentProgramId,
  SCE_GXM_OUTPUT_REGISTER_FORMAT_UCHAR4,
  msaa,
  blend_info,
  textureVertexProgramGxp,
  &out->texture);

 VITA2D_DEBUG("texture sceGxmShaderPatcherCreateFragmentProgram(): 0x%08X\n", err);

 err = sceGxmShaderPatcherCreateFragmentProgram(
  shaderPatcher,
  textureTintFragmentProgramId,
  SCE_GXM_OUTPUT_REGISTER_FORMAT_UCHAR4,
  msaa,
  blend_info,
  textureVertexProgramGxp,
  &out->textureTint);

 VITA2D_DEBUG("texture_tint sceGxmShaderPatcherCreateFragmentProgram(): 0x%08X\n", err);
}
