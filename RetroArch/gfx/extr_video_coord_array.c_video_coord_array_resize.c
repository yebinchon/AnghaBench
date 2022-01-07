
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lut_tex_coord; int tex_coord; int color; int vertex; } ;
struct TYPE_5__ {unsigned int allocated; TYPE_1__ coords; } ;
typedef TYPE_2__ video_coord_array_t ;


 int realloc_checked (void**,int) ;

__attribute__((used)) static bool video_coord_array_resize(video_coord_array_t *ca,
   unsigned cap)
{
   size_t base_size = sizeof(float) * cap;

   if (!realloc_checked((void**)&ca->coords.vertex,
            2 * base_size))
      return 0;
   if (!realloc_checked((void**)&ca->coords.color,
            4 * base_size))
      return 0;
   if (!realloc_checked((void**)&ca->coords.tex_coord,
            2 * base_size))
      return 0;
   if (!realloc_checked((void**)&ca->coords.lut_tex_coord,
            2 * base_size))
      return 0;

   ca->allocated = cap;

   return 1;
}
