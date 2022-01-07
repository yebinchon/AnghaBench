
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int dummy; } ;
typedef int drmEventContext ;


 int drmModeFreeConnector (int *) ;
 int drmModeFreeEncoder (int *) ;
 int drmModeFreeResources (int *) ;
 int * g_drm_connector ;
 int * g_drm_encoder ;
 int g_drm_evctx ;
 int g_drm_fds ;
 int * g_drm_resources ;
 int memset (int *,int ,int) ;

void drm_free(void)
{
   if (g_drm_encoder)
      drmModeFreeEncoder(g_drm_encoder);
   if (g_drm_connector)
      drmModeFreeConnector(g_drm_connector);
   if (g_drm_resources)
      drmModeFreeResources(g_drm_resources);

   memset(&g_drm_fds, 0, sizeof(struct pollfd));
   memset(&g_drm_evctx, 0, sizeof(drmEventContext));

   g_drm_encoder = ((void*)0);
   g_drm_connector = ((void*)0);
   g_drm_resources = ((void*)0);
}
