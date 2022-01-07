
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_tex_info {int coord; int * tex_size; int * input_size; int tex; } ;
struct cg_fbo_params {scalar_t__ coord; int tex_size_f; int tex_size_v; int vid_size_f; int vid_size_v; int tex; } ;
typedef int cg_shader_data_t ;
typedef int CGparameter ;


 int cg_gl_set_texture_parameter (int ,int ) ;
 int gl_cg_set_coord_array (scalar_t__,int *,int ,int) ;
 int set_param_2f (int ,int ,int ) ;

__attribute__((used)) static void gl_cg_set_texture_info(
      cg_shader_data_t *cg,
      const struct cg_fbo_params *params,
      const struct video_tex_info *info)
{
   CGparameter param = params->tex;

   cg_gl_set_texture_parameter(param, info->tex);

   set_param_2f(params->vid_size_v,
         info->input_size[0], info->input_size[1]);
   set_param_2f(params->vid_size_f,
         info->input_size[0], info->input_size[1]);
   set_param_2f(params->tex_size_v,
         info->tex_size[0], info->tex_size[1]);
   set_param_2f(params->tex_size_f,
         info->tex_size[0], info->tex_size[1]);

   if (params->coord)
      gl_cg_set_coord_array(params->coord, cg, info->coord, 2);
}
