
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ vertices; int * lut_tex_coord; int * tex_coord; int * color; int * vertex; } ;
struct TYPE_5__ {scalar_t__ allocated; TYPE_1__ coords; } ;
typedef TYPE_2__ video_coord_array_t ;


 int free (int *) ;

void video_coord_array_free(video_coord_array_t *ca)
{
   if (!ca->allocated)
      return;

   if (ca->coords.vertex)
      free(ca->coords.vertex);
   ca->coords.vertex = ((void*)0);

   if (ca->coords.color)
      free(ca->coords.color);
   ca->coords.color = ((void*)0);

   if (ca->coords.tex_coord)
      free(ca->coords.tex_coord);
   ca->coords.tex_coord = ((void*)0);

   if (ca->coords.lut_tex_coord)
      free(ca->coords.lut_tex_coord);
   ca->coords.lut_tex_coord = ((void*)0);

   ca->coords.vertices = 0;
   ca->allocated = 0;
}
