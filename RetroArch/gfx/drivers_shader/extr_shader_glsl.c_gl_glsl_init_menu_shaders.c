
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct shader_program_info {int is_file; void* fragment; void* vertex; } ;
struct TYPE_5__ {int * uniforms; TYPE_4__* prg; } ;
typedef TYPE_1__ glsl_shader_data_t ;
struct TYPE_6__ {int id; } ;


 int RARCH_LOG (char*) ;
 size_t VIDEO_SHADER_MENU ;
 size_t VIDEO_SHADER_MENU_2 ;
 size_t VIDEO_SHADER_MENU_3 ;
 size_t VIDEO_SHADER_MENU_4 ;
 size_t VIDEO_SHADER_MENU_5 ;
 size_t VIDEO_SHADER_MENU_6 ;
 void* core_stock_fragment_xmb ;
 int gl_glsl_compile_program (TYPE_1__*,size_t,TYPE_4__*,struct shader_program_info*) ;
 int gl_glsl_find_uniforms (TYPE_1__*,int ,int ,int *) ;
 scalar_t__ gl_query_extension (char*) ;
 scalar_t__ glsl_core ;
 void* stock_fragment_xmb ;
 void* stock_fragment_xmb_bokeh ;
 void* stock_fragment_xmb_bokeh_core ;
 void* stock_fragment_xmb_ribbon_simple ;
 void* stock_fragment_xmb_ribbon_simple_core ;
 void* stock_fragment_xmb_simple_snow ;
 void* stock_fragment_xmb_simple_snow_core ;
 void* stock_fragment_xmb_snow ;
 void* stock_fragment_xmb_snow_core ;
 void* stock_fragment_xmb_snowflake ;
 void* stock_fragment_xmb_snowflake_core ;
 void* stock_vertex_xmb_ribbon_legacy ;
 void* stock_vertex_xmb_ribbon_modern ;
 void* stock_vertex_xmb_ribbon_simple_legacy ;
 void* stock_vertex_xmb_simple_modern ;
 void* stock_vertex_xmb_snow ;
 void* stock_vertex_xmb_snow_core ;
 void* stock_vertex_xmb_snow_legacy ;

__attribute__((used)) static void gl_glsl_init_menu_shaders(void *data)
{
}
