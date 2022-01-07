
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * dev; struct TYPE_8__* shader_path; struct TYPE_8__* menu; scalar_t__ overlays_size; struct TYPE_8__* overlays; } ;
typedef TYPE_1__ d3d8_video_t ;


 int d3d8_deinitialize (TYPE_1__*) ;
 int d3d8_deinitialize_symbols () ;
 int d3d8_device_free (int *,int *) ;
 int d3d8_free_overlay (TYPE_1__*,TYPE_1__*) ;
 int d3d8_free_overlays (TYPE_1__*) ;
 int free (TYPE_1__*) ;
 int * g_pD3D8 ;
 int string_is_empty (TYPE_1__*) ;
 int win32_destroy_window () ;
 int win32_monitor_from_window () ;

__attribute__((used)) static void d3d8_free(void *data)
{
   d3d8_video_t *d3d = (d3d8_video_t*)data;

   if (!d3d)
      return;
   d3d8_free_overlay(d3d, d3d->menu);
   if (d3d->menu)
      free(d3d->menu);
   d3d->menu = ((void*)0);

   d3d8_deinitialize(d3d);

   if (!string_is_empty(d3d->shader_path))
      free(d3d->shader_path);

   d3d->shader_path = ((void*)0);
   d3d8_device_free(d3d->dev, g_pD3D8);
   d3d->dev = ((void*)0);
   g_pD3D8 = ((void*)0);

   d3d8_deinitialize_symbols();


   win32_monitor_from_window();
   win32_destroy_window();

   free(d3d);
}
