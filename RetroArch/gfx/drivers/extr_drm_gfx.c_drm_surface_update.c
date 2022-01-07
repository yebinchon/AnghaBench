
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct drm_video {int dummy; } ;
struct drm_surface {int src_height; size_t flip_page; scalar_t__ pitch; scalar_t__ total_pitch; TYPE_2__* pages; } ;
struct drm_page {int dummy; } ;
struct TYPE_3__ {scalar_t__ map; } ;
struct TYPE_4__ {TYPE_1__ buf; } ;


 int drm_page_flip (struct drm_surface*) ;
 int memcpy (scalar_t__,int *,scalar_t__) ;

__attribute__((used)) static void drm_surface_update(void *data, const void *frame,
      struct drm_surface *surface)
{
   struct drm_video *_drmvars = data;
   struct drm_page *page = ((void*)0);

   int line = 0;
   int src_offset = 0;
   int dst_offset = 0;

   for (line = 0; line < surface->src_height; line++)
   {
      memcpy (
            surface->pages[surface->flip_page].buf.map + dst_offset,
            (uint8_t*)frame + src_offset,
            surface->pitch);
      src_offset += surface->total_pitch;
      dst_offset += surface->pitch;
   }


   drm_page_flip(surface);
}
