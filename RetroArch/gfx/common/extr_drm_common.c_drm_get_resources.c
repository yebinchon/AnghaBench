
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RARCH_WARN (char*) ;
 int drmModeGetResources (int) ;
 int g_drm_resources ;

bool drm_get_resources(int fd)
{
   g_drm_resources = drmModeGetResources(fd);
   if (!g_drm_resources)
   {
      RARCH_WARN("[DRM]: Couldn't get device resources.\n");
      return 0;
   }

   return 1;
}
