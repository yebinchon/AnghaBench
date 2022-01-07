
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * decl; int * buffer; } ;
struct TYPE_6__ {TYPE_1__ menu_display; } ;
typedef TYPE_2__ d3d9_video_t ;


 int d3d9_deinit_chain (TYPE_2__*) ;
 int d3d9_vertex_buffer_free (int *,int *) ;
 int font_driver_free_osd () ;

__attribute__((used)) static void d3d9_deinitialize(d3d9_video_t *d3d)
{
   if (!d3d)
      return;

   font_driver_free_osd();

   d3d9_deinit_chain(d3d);
   d3d9_vertex_buffer_free(d3d->menu_display.buffer, d3d->menu_display.decl);

   d3d->menu_display.buffer = ((void*)0);
   d3d->menu_display.decl = ((void*)0);
}
