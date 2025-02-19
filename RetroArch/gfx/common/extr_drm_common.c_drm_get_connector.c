
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int monitor_index; } ;
typedef TYPE_1__ video_frame_info_t ;
typedef TYPE_2__* drmModeConnectorPtr ;
struct TYPE_10__ {int count_connectors; int * connectors; } ;
struct TYPE_9__ {scalar_t__ connection; unsigned int count_modes; } ;


 scalar_t__ DRM_MODE_CONNECTED ;
 unsigned int MAX (int ,int) ;
 int RARCH_LOG (char*,unsigned int,...) ;
 int RARCH_WARN (char*) ;
 int drmModeFreeConnector (TYPE_2__*) ;
 TYPE_2__* drmModeGetConnector (int,int ) ;
 TYPE_2__* g_drm_connector ;
 TYPE_3__* g_drm_resources ;

bool drm_get_connector(int fd, video_frame_info_t *video_info)
{
   unsigned i;
   unsigned monitor_index = 0;
   unsigned monitor = MAX(video_info->monitor_index, 1);



   RARCH_LOG("[DRM]: Found %d connectors.\n", g_drm_resources->count_connectors);

   for (i = 0; (int)i < g_drm_resources->count_connectors; i++)
   {
      drmModeConnectorPtr conn = drmModeGetConnector(
            fd, g_drm_resources->connectors[i]);

      if (conn)
      {
         bool connected = conn->connection == DRM_MODE_CONNECTED;
         RARCH_LOG("[DRM]: Connector %d connected: %s\n", i, connected ? "yes" : "no");
         RARCH_LOG("[DRM]: Connector %d has %d modes.\n", i, conn->count_modes);
         if (connected && conn->count_modes > 0)
         {
            monitor_index++;
            RARCH_LOG("[DRM]: Connector %d assigned to monitor index: #%u.\n", i, monitor_index);
         }
         drmModeFreeConnector(conn);
      }
   }

   monitor_index = 0;

   for (i = 0; (int)i < g_drm_resources->count_connectors; i++)
   {
      g_drm_connector = drmModeGetConnector(fd,
            g_drm_resources->connectors[i]);

      if (!g_drm_connector)
         continue;
      if (g_drm_connector->connection == DRM_MODE_CONNECTED
            && g_drm_connector->count_modes > 0)
      {
         monitor_index++;
         if (monitor_index == monitor)
            break;
      }

      drmModeFreeConnector(g_drm_connector);
      g_drm_connector = ((void*)0);
   }

   if (!g_drm_connector)
   {
      RARCH_WARN("[DRM]: Couldn't get device connector.\n");
      return 0;
   }
   return 1;
}
