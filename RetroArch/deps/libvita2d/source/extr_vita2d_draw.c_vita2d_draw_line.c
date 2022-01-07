
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float x; float y; float z; unsigned int color; } ;
typedef TYPE_1__ vita2d_color_vertex ;
typedef int uint16_t ;


 int SCE_GXM_INDEX_FORMAT_U16 ;
 int SCE_GXM_POLYGON_MODE_LINE ;
 int SCE_GXM_POLYGON_MODE_TRIANGLE_FILL ;
 int SCE_GXM_PRIMITIVE_LINES ;
 int _vita2d_colorFragmentProgram ;
 int _vita2d_colorVertexProgram ;
 int _vita2d_colorWvpParam ;
 int _vita2d_context ;
 int _vita2d_ortho_matrix ;
 int sceGxmDraw (int ,int ,int ,int*,int) ;
 int sceGxmReserveVertexDefaultUniformBuffer (int ,void**) ;
 int sceGxmSetFragmentProgram (int ,int ) ;
 int sceGxmSetFrontPolygonMode (int ,int ) ;
 int sceGxmSetUniformDataF (void*,int ,int ,int,int ) ;
 int sceGxmSetVertexProgram (int ,int ) ;
 int sceGxmSetVertexStream (int ,int ,TYPE_1__*) ;
 scalar_t__ vita2d_pool_memalign (int,int) ;

void vita2d_draw_line(float x0, float y0, float x1, float y1, unsigned int color)
{
 vita2d_color_vertex *vertices = (vita2d_color_vertex *)vita2d_pool_memalign(
  2 * sizeof(vita2d_color_vertex),
  sizeof(vita2d_color_vertex));

 uint16_t *indices = (uint16_t *)vita2d_pool_memalign(
  2 * sizeof(uint16_t),
  sizeof(uint16_t));

 vertices[0].x = x0;
 vertices[0].y = y0;
 vertices[0].z = +0.5f;
 vertices[0].color = color;

 vertices[1].x = x1;
 vertices[1].y = y1;
 vertices[1].z = +0.5f;
 vertices[1].color = color;

 indices[0] = 0;
 indices[1] = 1;

 sceGxmSetVertexProgram(_vita2d_context, _vita2d_colorVertexProgram);
 sceGxmSetFragmentProgram(_vita2d_context, _vita2d_colorFragmentProgram);

 void *vertexDefaultBuffer;
 sceGxmReserveVertexDefaultUniformBuffer(_vita2d_context, &vertexDefaultBuffer);
 sceGxmSetUniformDataF(vertexDefaultBuffer, _vita2d_colorWvpParam, 0, 16, _vita2d_ortho_matrix);

 sceGxmSetVertexStream(_vita2d_context, 0, vertices);
 sceGxmSetFrontPolygonMode(_vita2d_context, SCE_GXM_POLYGON_MODE_LINE);
 sceGxmDraw(_vita2d_context, SCE_GXM_PRIMITIVE_LINES, SCE_GXM_INDEX_FORMAT_U16, indices, 2);
 sceGxmSetFrontPolygonMode(_vita2d_context, SCE_GXM_POLYGON_MODE_TRIANGLE_FILL);
}
