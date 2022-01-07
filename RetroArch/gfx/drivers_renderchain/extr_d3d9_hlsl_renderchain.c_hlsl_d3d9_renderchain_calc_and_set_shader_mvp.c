
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct shader_pass {int vtable; } ;
struct d3d_matrix {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_5__ {TYPE_1__ chain; } ;
typedef TYPE_2__ hlsl_renderchain_t ;


 double D3D_PI ;
 int d3d9_hlsl_set_param_matrix (int ,int ,char*,void const*) ;
 int d3d_matrix_identity (struct d3d_matrix*) ;
 int d3d_matrix_multiply (struct d3d_matrix*,struct d3d_matrix*,struct d3d_matrix*) ;
 int d3d_matrix_ortho_off_center_lh (struct d3d_matrix*,int ,unsigned int,int ,unsigned int,int ,int) ;
 int d3d_matrix_rotation_z (struct d3d_matrix*,unsigned int) ;
 int d3d_matrix_transpose (struct d3d_matrix*,struct d3d_matrix*) ;

__attribute__((used)) static void hlsl_d3d9_renderchain_calc_and_set_shader_mvp(
      hlsl_renderchain_t *chain,
      struct shader_pass *pass,
      unsigned vp_width, unsigned vp_height,
      unsigned rotation)
{
   struct d3d_matrix proj, ortho, rot, matrix;

   d3d_matrix_ortho_off_center_lh(&ortho, 0, vp_width, 0, vp_height, 0, 1);
   d3d_matrix_identity(&rot);
   d3d_matrix_rotation_z(&rot, rotation * (D3D_PI / 2.0));

   d3d_matrix_multiply(&proj, &ortho, &rot);
   d3d_matrix_transpose(&matrix, &proj);

   d3d9_hlsl_set_param_matrix(pass->vtable,
         chain->chain.dev, "modelViewProj", (const void*)&matrix);
}
