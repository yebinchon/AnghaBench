
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int drm_wait_flip (int) ;
 int g_bo ;
 int g_gbm_surface ;
 int g_next_bo ;
 int gbm_surface_release_buffer (int ,int ) ;
 scalar_t__ waiting_for_flip ;

__attribute__((used)) static bool gfx_ctx_drm_wait_flip(bool block)
{
   int timeout = 0;

   if (!waiting_for_flip)
      return 0;

   if (block)
      timeout = -1;

   while (waiting_for_flip)
   {
      if (!drm_wait_flip(timeout))
         break;
   }

   if (waiting_for_flip)
      return 1;




   gbm_surface_release_buffer(g_gbm_surface, g_bo);

   g_bo = g_next_bo;

   return 0;
}
