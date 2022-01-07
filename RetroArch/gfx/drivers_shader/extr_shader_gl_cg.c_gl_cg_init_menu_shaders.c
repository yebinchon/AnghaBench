
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct shader_program_info {int is_file; void* combined; } ;
struct TYPE_4__ {int * prg; } ;
typedef TYPE_1__ cg_shader_data_t ;


 size_t VIDEO_SHADER_MENU ;
 size_t VIDEO_SHADER_MENU_2 ;
 size_t VIDEO_SHADER_MENU_3 ;
 int gl_cg_compile_program (TYPE_1__*,size_t,int *,struct shader_program_info*) ;
 int gl_cg_set_program_base_attrib (TYPE_1__*,size_t) ;
 void* stock_xmb_ribbon_simple ;
 void* stock_xmb_snow ;

__attribute__((used)) static void gl_cg_init_menu_shaders(void *data)
{
   struct shader_program_info shader_prog_info;
   cg_shader_data_t *cg = (cg_shader_data_t*)data;

   if (!cg)
      return;
}
