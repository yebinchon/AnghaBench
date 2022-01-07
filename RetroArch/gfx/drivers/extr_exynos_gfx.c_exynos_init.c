
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct exynos_data {scalar_t__ width; scalar_t__ height; float aspect; int num_pages; unsigned int bpp; unsigned int pitch; int size; } ;
struct TYPE_6__ {scalar_t__ video_fullscreen_x; scalar_t__ video_fullscreen_y; } ;
struct TYPE_7__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_9__ {unsigned int count_modes; TYPE_3__* modes; } ;
struct TYPE_8__ {scalar_t__ hdisplay; scalar_t__ vdisplay; } ;


 int RARCH_ERR (char*,...) ;
 int RARCH_LOG (char*,unsigned int,int,unsigned int) ;
 TYPE_2__* config_get_ptr () ;
 int drm_restore_crtc () ;
 int drm_setup (int ) ;
 TYPE_4__* g_drm_connector ;
 int g_drm_fd ;
 TYPE_3__* g_drm_mode ;

__attribute__((used)) static int exynos_init(struct exynos_data *pdata, unsigned bpp)
{
   unsigned i;
   settings_t *settings = config_get_ptr();

   if (settings->uints.video_fullscreen_x != 0 &&
         settings->uints.video_fullscreen_y != 0)
   {
      for (i = 0; i < g_drm_connector->count_modes; i++)
      {
         if (g_drm_connector->modes[i].hdisplay == settings->uints.video_fullscreen_x &&
               g_drm_connector->modes[i].vdisplay == settings->uints.video_fullscreen_y)
         {
            g_drm_mode = &g_drm_connector->modes[i];
            break;
         }
      }

      if (!g_drm_mode)
      {
         RARCH_ERR("[video_exynos]: requested resolution (%ux%u) not available\n",
               settings->uints.video_fullscreen_x,
               settings->uints.video_fullscreen_y);
         goto fail;
      }

   }
   else
   {

      g_drm_mode = &g_drm_connector->modes[0];
   }

   if (g_drm_mode->hdisplay == 0 || g_drm_mode->vdisplay == 0)
   {
      RARCH_ERR("[video_exynos]: failed to select sane resolution\n");
      goto fail;
   }

   drm_setup(g_drm_fd);

   pdata->width = g_drm_mode->hdisplay;
   pdata->height = g_drm_mode->vdisplay;

   pdata->aspect = (float)g_drm_mode->hdisplay / (float)g_drm_mode->vdisplay;


   pdata->num_pages = 3;

   pdata->bpp = bpp;
   pdata->pitch = bpp * pdata->width;
   pdata->size = pdata->pitch * pdata->height;

   RARCH_LOG("[video_exynos]: selected %ux%u resolution with %u bpp\n",
         pdata->width, pdata->height, pdata->bpp);

   return 0;

fail:
   drm_restore_crtc();

   g_drm_mode = ((void*)0);

   return -1;
}
