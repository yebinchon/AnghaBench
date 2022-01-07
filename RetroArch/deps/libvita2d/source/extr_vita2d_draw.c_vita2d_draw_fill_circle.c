
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float x; float y; float z; unsigned int color; } ;
typedef TYPE_1__ vita2d_color_vertex ;
typedef int uint16_t ;


 int M_PI ;
 int SCE_GXM_INDEX_FORMAT_U16 ;
 int SCE_GXM_PRIMITIVE_TRIANGLE_FAN ;
 int _vita2d_colorFragmentProgram ;
 int _vita2d_colorVertexProgram ;
 int _vita2d_colorWvpParam ;
 int _vita2d_context ;
 int _vita2d_ortho_matrix ;
 float cosf (float) ;
 int sceGxmDraw (int ,int ,int ,int*,int const) ;
 int sceGxmReserveVertexDefaultUniformBuffer (int ,void**) ;
 int sceGxmSetFragmentProgram (int ,int ) ;
 int sceGxmSetUniformDataF (void*,int ,int ,int,int ) ;
 int sceGxmSetVertexProgram (int ,int ) ;
 int sceGxmSetVertexStream (int ,int ,TYPE_1__*) ;
 float sinf (float) ;
 scalar_t__ vita2d_pool_memalign (int const,int) ;

void vita2d_draw_fill_circle(float x, float y, float radius, unsigned int color)
{
 static const int num_segments = 100;

 vita2d_color_vertex *vertices = (vita2d_color_vertex *)vita2d_pool_memalign(
  (num_segments + 1) * sizeof(vita2d_color_vertex),
  sizeof(vita2d_color_vertex));

 uint16_t *indices = (uint16_t *)vita2d_pool_memalign(
  (num_segments + 2) * sizeof(uint16_t),
  sizeof(uint16_t));


 vertices[0].x = x;
 vertices[0].y = y;
 vertices[0].z = +0.5f;
 vertices[0].color = color;
 indices[0] = 0;

 float theta = 2 * M_PI / (float)num_segments;
 float c = cosf(theta);
 float s = sinf(theta);
 float t;

 float xx = radius;
 float yy = 0;
 int i;

 for (i = 1; i <= num_segments; i++) {
  vertices[i].x = x + xx;
  vertices[i].y = y + yy;
  vertices[i].z = +0.5f;
  vertices[i].color = color;
  indices[i] = i;

  t = xx;
  xx = c * xx - s * yy;
  yy = s * t + c * yy;
 }

 indices[num_segments + 1] = 1;

 sceGxmSetVertexProgram(_vita2d_context, _vita2d_colorVertexProgram);
 sceGxmSetFragmentProgram(_vita2d_context, _vita2d_colorFragmentProgram);

 void *vertexDefaultBuffer;
 sceGxmReserveVertexDefaultUniformBuffer(_vita2d_context, &vertexDefaultBuffer);
 sceGxmSetUniformDataF(vertexDefaultBuffer, _vita2d_colorWvpParam, 0, 16, _vita2d_ortho_matrix);

 sceGxmSetVertexStream(_vita2d_context, 0, vertices);
 sceGxmDraw(_vita2d_context, SCE_GXM_PRIMITIVE_TRIANGLE_FAN, SCE_GXM_INDEX_FORMAT_U16, indices, num_segments + 2);
}
