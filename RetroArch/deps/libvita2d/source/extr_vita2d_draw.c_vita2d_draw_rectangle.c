
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float x; float y; float z; unsigned int color; } ;
typedef TYPE_1__ vita2d_color_vertex ;
typedef int uint16_t ;


 int SCE_GXM_INDEX_FORMAT_U16 ;
 int SCE_GXM_PRIMITIVE_TRIANGLE_STRIP ;
 int _vita2d_colorFragmentProgram ;
 int _vita2d_colorVertexProgram ;
 int _vita2d_colorWvpParam ;
 int _vita2d_context ;
 int _vita2d_ortho_matrix ;
 int sceGxmDraw (int ,int ,int ,int*,int) ;
 int sceGxmReserveVertexDefaultUniformBuffer (int ,void**) ;
 int sceGxmSetFragmentProgram (int ,int ) ;
 int sceGxmSetUniformDataF (void*,int ,int ,int,int ) ;
 int sceGxmSetVertexProgram (int ,int ) ;
 int sceGxmSetVertexStream (int ,int ,TYPE_1__*) ;
 scalar_t__ vita2d_pool_memalign (int,int) ;

void vita2d_draw_rectangle(float x, float y, float w, float h, unsigned int color)
{
 vita2d_color_vertex *vertices = (vita2d_color_vertex *)vita2d_pool_memalign(
  4 * sizeof(vita2d_color_vertex),
  sizeof(vita2d_color_vertex));

 uint16_t *indices = (uint16_t *)vita2d_pool_memalign(
  4 * sizeof(uint16_t),
  sizeof(uint16_t));

 vertices[0].x = x;
 vertices[0].y = y;
 vertices[0].z = +0.5f;
 vertices[0].color = color;

 vertices[1].x = x + w;
 vertices[1].y = y;
 vertices[1].z = +0.5f;
 vertices[1].color = color;

 vertices[2].x = x;
 vertices[2].y = y + h;
 vertices[2].z = +0.5f;
 vertices[2].color = color;

 vertices[3].x = x + w;
 vertices[3].y = y + h;
 vertices[3].z = +0.5f;
 vertices[3].color = color;

 indices[0] = 0;
 indices[1] = 1;
 indices[2] = 2;
 indices[3] = 3;

 sceGxmSetVertexProgram(_vita2d_context, _vita2d_colorVertexProgram);
 sceGxmSetFragmentProgram(_vita2d_context, _vita2d_colorFragmentProgram);

 void *vertexDefaultBuffer;
 sceGxmReserveVertexDefaultUniformBuffer(_vita2d_context, &vertexDefaultBuffer);
 sceGxmSetUniformDataF(vertexDefaultBuffer, _vita2d_colorWvpParam, 0, 16, _vita2d_ortho_matrix);

 sceGxmSetVertexStream(_vita2d_context, 0, vertices);
 sceGxmDraw(_vita2d_context, SCE_GXM_PRIMITIVE_TRIANGLE_STRIP, SCE_GXM_INDEX_FORMAT_U16, indices, 4);
}
