
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _vita2d_context ;
 int _vita2d_textureTintFragmentProgram ;
 int _vita2d_textureVertexProgram ;
 int sceGxmSetFragmentProgram (int ,int ) ;
 int sceGxmSetVertexProgram (int ,int ) ;

__attribute__((used)) static inline void set_texture_tint_program()
{
 sceGxmSetVertexProgram(_vita2d_context, _vita2d_textureVertexProgram);
 sceGxmSetFragmentProgram(_vita2d_context, _vita2d_textureTintFragmentProgram);
}
