
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct video_coords {int color; int lut_tex_coord; int tex_coord; int vertex; } ;
struct TYPE_5__ {size_t active_idx; TYPE_1__* prg; } ;
typedef TYPE_2__ cg_shader_data_t ;
struct TYPE_4__ {scalar_t__ color; scalar_t__ lut_tex; scalar_t__ tex; scalar_t__ vertex; } ;


 int gl_cg_set_coord_array (scalar_t__,TYPE_2__*,int ,int) ;

__attribute__((used)) static bool gl_cg_set_coords(void *shader_data,
      const struct video_coords *coords)
{
   cg_shader_data_t *cg = (cg_shader_data_t*)shader_data;

   if (!cg || !coords)
   {
      if (coords)
         return 0;
      return 1;
   }

   if (cg->prg[cg->active_idx].vertex)
      gl_cg_set_coord_array(cg->prg[cg->active_idx].vertex, cg, coords->vertex, 2);

   if (cg->prg[cg->active_idx].tex)
      gl_cg_set_coord_array(cg->prg[cg->active_idx].tex, cg, coords->tex_coord, 2);

   if (cg->prg[cg->active_idx].lut_tex)
      gl_cg_set_coord_array(cg->prg[cg->active_idx].lut_tex, cg, coords->lut_tex_coord, 2);

   if (cg->prg[cg->active_idx].color)
      gl_cg_set_coord_array(cg->prg[cg->active_idx].color, cg, coords->color, 4);

   return 1;
}
