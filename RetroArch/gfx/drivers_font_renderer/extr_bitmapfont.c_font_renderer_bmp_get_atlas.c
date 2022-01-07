
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct font_atlas {int dummy; } ;
struct TYPE_2__ {struct font_atlas atlas; } ;
typedef TYPE_1__ bm_renderer_t ;



__attribute__((used)) static struct font_atlas *font_renderer_bmp_get_atlas(void *data)
{
   bm_renderer_t *handle = (bm_renderer_t*)data;
   if (!handle)
      return ((void*)0);
   return &handle->atlas;
}
