
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vert_buf; int tex; } ;
typedef TYPE_1__ overlay_t ;
typedef int d3d8_video_t ;


 int d3d8_texture_free (int ) ;
 int d3d8_vertex_buffer_free (int ,int *) ;

__attribute__((used)) static void d3d8_free_overlay(d3d8_video_t *d3d, overlay_t *overlay)
{
   if (!d3d)
      return;

   d3d8_texture_free(overlay->tex);
   d3d8_vertex_buffer_free(overlay->vert_buf, ((void*)0));
}
