
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ encoder_id; int count_modes; TYPE_1__* modes; } ;
struct TYPE_9__ {scalar_t__ encoder_id; } ;
struct TYPE_8__ {int count_encoders; int * encoders; } ;
struct TYPE_7__ {int vrefresh; int vdisplay; int hdisplay; int name; } ;


 int RARCH_LOG (char*,unsigned int,int ,int ,int ,int ) ;
 int RARCH_WARN (char*) ;
 int drmModeFreeEncoder (TYPE_3__*) ;
 TYPE_3__* drmModeGetEncoder (int,int ) ;
 TYPE_4__* g_drm_connector ;
 TYPE_3__* g_drm_encoder ;
 TYPE_2__* g_drm_resources ;

bool drm_get_encoder(int fd)
{
   unsigned i;

   for (i = 0; (int)i < g_drm_resources->count_encoders; i++)
   {
      g_drm_encoder = drmModeGetEncoder(fd, g_drm_resources->encoders[i]);

      if (!g_drm_encoder)
         continue;

      if (g_drm_encoder->encoder_id == g_drm_connector->encoder_id)
         break;

      drmModeFreeEncoder(g_drm_encoder);
      g_drm_encoder = ((void*)0);
   }

   if (!g_drm_encoder)
   {
      RARCH_WARN("[DRM]: Couldn't find DRM encoder.\n");
      return 0;
   }

   for (i = 0; (int)i < g_drm_connector->count_modes; i++)
   {
      RARCH_LOG("[DRM]: Mode %d: (%s) %d x %d, %u Hz\n",
            i,
            g_drm_connector->modes[i].name,
            g_drm_connector->modes[i].hdisplay,
            g_drm_connector->modes[i].vdisplay,
            g_drm_connector->modes[i].vrefresh);
   }

   return 1;
}
