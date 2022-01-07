
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_video {int dummy; } ;



__attribute__((used)) static void drm_gfx_set_nonblock_state(void *data, bool state)
{
   struct drm_video *vid = data;

   (void)data;
   (void)vid;


}
