
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCE_GXM_INDEX_FORMAT_U16 ;
 int SCE_GXM_PRIMITIVE_TRIANGLES ;
 int _vita2d_clearClearColorParam ;
 int _vita2d_context ;
 int clearFragmentProgram ;
 int clearVertexProgram ;
 int clearVertices ;
 int clear_color ;
 int linearIndices ;
 int sceGxmDraw (int ,int ,int ,int ,int) ;
 int sceGxmReserveFragmentDefaultUniformBuffer (int ,void**) ;
 int sceGxmSetFragmentProgram (int ,int ) ;
 int sceGxmSetUniformDataF (void*,int ,int ,int,int ) ;
 int sceGxmSetVertexProgram (int ,int ) ;
 int sceGxmSetVertexStream (int ,int ,int ) ;

void vita2d_clear_screen()
{

 sceGxmSetVertexProgram(_vita2d_context, clearVertexProgram);
 sceGxmSetFragmentProgram(_vita2d_context, clearFragmentProgram);


 void *color_buffer;
 sceGxmReserveFragmentDefaultUniformBuffer(_vita2d_context, &color_buffer);
 sceGxmSetUniformDataF(color_buffer, _vita2d_clearClearColorParam, 0, 4, clear_color);


 sceGxmSetVertexStream(_vita2d_context, 0, clearVertices);
 sceGxmDraw(_vita2d_context, SCE_GXM_PRIMITIVE_TRIANGLES, SCE_GXM_INDEX_FORMAT_U16, linearIndices, 3);
}
