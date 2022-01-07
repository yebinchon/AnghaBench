
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct exynos_data {int drmname; } ;
typedef int buf ;
struct TYPE_6__ {int connector_id; } ;
struct TYPE_5__ {int page_flip_handler; int version; } ;
struct TYPE_4__ {int fd; int events; } ;


 int DRM_EVENT_CONTEXT_VERSION ;
 int O_RDWR ;
 int POLLIN ;
 int RARCH_ERR (char*) ;
 int RARCH_LOG (char*,int ,int ) ;
 int close (int) ;
 int drm_free () ;
 int drm_get_decoder (int) ;
 int drm_get_encoder (int) ;
 int drm_get_resources (int) ;
 int exynos_get_device_index () ;
 int exynos_page_flip_handler ;
 TYPE_3__* g_drm_connector ;
 TYPE_2__ g_drm_evctx ;
 int g_drm_fd ;
 TYPE_1__ g_drm_fds ;
 int open (char*,int ) ;
 int snprintf (char*,int,char*,int) ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static int exynos_open(struct exynos_data *pdata)
{
   unsigned i;
   int fd = -1;
   char buf[32] = {0};
   int devidx = exynos_get_device_index();

   if (pdata)
      g_drm_fd = -1;

   if (devidx != -1)
      snprintf(buf, sizeof(buf), "/dev/dri/card%d", devidx);
   else
   {
      RARCH_ERR("[video_exynos]: no compatible DRM device found\n");
      return -1;
   }

   fd = open(buf, O_RDWR);

   if (fd < 0)
   {
      RARCH_ERR("[video_exynos]: can't open DRM device\n");
      return -1;
   }

   if (!drm_get_resources(fd))
      goto fail;

   if (!drm_get_decoder(fd))
      goto fail;

   if (!drm_get_encoder(fd))
      goto fail;


   g_drm_fds.fd = fd;
   g_drm_fds.events = POLLIN;
   g_drm_evctx.version = DRM_EVENT_CONTEXT_VERSION;
   g_drm_evctx.page_flip_handler = exynos_page_flip_handler;

   strncpy(pdata->drmname, buf, sizeof(buf));
   g_drm_fd = fd;

   RARCH_LOG("[video_exynos]: using DRM device \"%s\" with connector id %u.\n",
         pdata->drmname, g_drm_connector->connector_id);

   return 0;

fail:
   drm_free();
   close(g_drm_fd);

   return -1;
}
