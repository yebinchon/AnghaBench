
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vita2d_texture_vertex ;
struct TYPE_3__ {int gxm_tex; } ;
typedef TYPE_1__ vita2d_texture ;
typedef int SceGxmPrimitiveType ;


 int SCE_GXM_INDEX_FORMAT_U16 ;
 int SCE_GXM_POLYGON_MODE_TRIANGLE_FILL ;
 int _vita2d_context ;
 int sceGxmDraw (int ,int ,int ,int ,size_t) ;
 int sceGxmSetBackPolygonMode (int ,int ) ;
 int sceGxmSetFragmentTexture (int ,int ,int *) ;
 int sceGxmSetVertexStream (int ,int ,int const*) ;
 int set_texture_tint_color_uniform (unsigned int) ;
 int set_texture_tint_program () ;
 int set_texture_wvp_uniform () ;
 int vita2d_get_linear_indices () ;

void vita2d_draw_array_textured(const vita2d_texture *texture, SceGxmPrimitiveType mode, const vita2d_texture_vertex *vertices, size_t count, unsigned int color)
{
 set_texture_tint_program();
 set_texture_wvp_uniform();
 set_texture_tint_color_uniform(color);

 sceGxmSetBackPolygonMode(_vita2d_context, SCE_GXM_POLYGON_MODE_TRIANGLE_FILL);


 sceGxmSetFragmentTexture(_vita2d_context, 0, &texture->gxm_tex);

 sceGxmSetVertexStream(_vita2d_context, 0, vertices);
 sceGxmDraw(_vita2d_context, mode, SCE_GXM_INDEX_FORMAT_U16, vita2d_get_linear_indices(), count);
}
