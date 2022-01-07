
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vert_buf; scalar_t__ tex; } ;
typedef TYPE_1__ overlay_t ;
typedef int d3d9_video_t ;
typedef int LPDIRECT3DTEXTURE9 ;


 int d3d9_texture_free (int ) ;
 int d3d9_vertex_buffer_free (int ,int *) ;

__attribute__((used)) static void d3d9_free_overlay(d3d9_video_t *d3d, overlay_t *overlay)
{
   if (!d3d)
      return;

   d3d9_texture_free((LPDIRECT3DTEXTURE9)overlay->tex);
   d3d9_vertex_buffer_free(overlay->vert_buf, ((void*)0));
}
