
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
 int sceGxmDraw (int ,int ,int ,int ,int) ;
 int sceGxmSetFragmentTexture (int ,int ,int *) ;
 int sceGxmSetVertexStream (int ,int ,TYPE_1__*) ;
 int vita2d_get_linear_indices () ;
 scalar_t__ vita2d_pool_memalign (int,int) ;
 float vita2d_texture_get_height (TYPE_2__ const*) ;
 float vita2d_texture_get_width (TYPE_2__ const*) ;

__attribute__((used)) static inline void draw_texture_part_scale_generic(const vita2d_texture *texture, float x, float y, float tex_x, float tex_y, float tex_w, float tex_h, float x_scale, float y_scale)
{
 vita2d_texture_vertex *vertices = (vita2d_texture_vertex *)vita2d_pool_memalign(
  4 * sizeof(vita2d_texture_vertex),
  sizeof(vita2d_texture_vertex));

 const float w = vita2d_texture_get_width(texture);
 const float h = vita2d_texture_get_height(texture);

 const float u0 = tex_x/w;
 const float v0 = tex_y/h;
 const float u1 = (tex_x+tex_w)/w;
 const float v1 = (tex_y+tex_h)/h;

 tex_w *= x_scale;
 tex_h *= y_scale;

 vertices[0].x = x;
 vertices[0].y = y;
 vertices[0].z = +0.5f;
 vertices[0].u = u0;
 vertices[0].v = v0;

 vertices[1].x = x + tex_w;
 vertices[1].y = y;
 vertices[1].z = +0.5f;
 vertices[1].u = u1;
 vertices[1].v = v0;

 vertices[2].x = x;
 vertices[2].y = y + tex_h;
 vertices[2].z = +0.5f;
 vertices[2].u = u0;
 vertices[2].v = v1;

 vertices[3].x = x + tex_w;
 vertices[3].y = y + tex_h;
 vertices[3].z = +0.5f;
 vertices[3].u = u1;
 vertices[3].v = v1;


 sceGxmSetFragmentTexture(_vita2d_context, 0, &texture->gxm_tex);

 sceGxmSetVertexStream(_vita2d_context, 0, vertices);
 sceGxmDraw(_vita2d_context, SCE_GXM_PRIMITIVE_TRIANGLE_STRIP, SCE_GXM_INDEX_FORMAT_U16, vita2d_get_linear_indices(), 4);
}
