
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {float x; float y; float z; float u; float v; } ;
typedef TYPE_1__ vita2d_texture_vertex ;
struct TYPE_8__ {int gxm_tex; } ;
typedef TYPE_2__ vita2d_texture ;


 int SCE_GXM_INDEX_FORMAT_U16 ;
 int SCE_GXM_PRIMITIVE_TRIANGLE_STRIP ;
 int _vita2d_context ;
 float cosf (float) ;
 int sceGxmDraw (int ,int ,int ,int ,int) ;
 int sceGxmSetFragmentTexture (int ,int ,int *) ;
 int sceGxmSetVertexStream (int ,int ,TYPE_1__*) ;
 float sinf (float) ;
 int vita2d_get_linear_indices () ;
 scalar_t__ vita2d_pool_memalign (int,int) ;
 float vita2d_texture_get_height (TYPE_2__ const*) ;
 float vita2d_texture_get_width (TYPE_2__ const*) ;

__attribute__((used)) static inline void draw_texture_rotate_hotspot_generic(const vita2d_texture *texture, float x, float y, float rad, float center_x, float center_y)
{
 vita2d_texture_vertex *vertices = (vita2d_texture_vertex *)vita2d_pool_memalign(
  4 * sizeof(vita2d_texture_vertex),
  sizeof(vita2d_texture_vertex));

 const float w = vita2d_texture_get_width(texture);
 const float h = vita2d_texture_get_height(texture);

 vertices[0].x = -center_x;
 vertices[0].y = -center_y;
 vertices[0].z = +0.5f;
 vertices[0].u = 0.0f;
 vertices[0].v = 0.0f;

 vertices[1].x = w - center_x;
 vertices[1].y = -center_y;
 vertices[1].z = +0.5f;
 vertices[1].u = 1.0f;
 vertices[1].v = 0.0f;

 vertices[2].x = -center_x;
 vertices[2].y = h - center_y;
 vertices[2].z = +0.5f;
 vertices[2].u = 0.0f;
 vertices[2].v = 1.0f;

 vertices[3].x = w - center_x;
 vertices[3].y = h - center_y;
 vertices[3].z = +0.5f;
 vertices[3].u = 1.0f;
 vertices[3].v = 1.0f;

 float c = cosf(rad);
 float s = sinf(rad);
 int i;
 for (i = 0; i < 4; ++i) {
  float _x = vertices[i].x;
  float _y = vertices[i].y;
  vertices[i].x = _x*c - _y*s + x;
  vertices[i].y = _x*s + _y*c + y;
 }


 sceGxmSetFragmentTexture(_vita2d_context, 0, &texture->gxm_tex);

 sceGxmSetVertexStream(_vita2d_context, 0, vertices);
 sceGxmDraw(_vita2d_context, SCE_GXM_PRIMITIVE_TRIANGLE_STRIP, SCE_GXM_INDEX_FORMAT_U16, vita2d_get_linear_indices(), 4);
}
