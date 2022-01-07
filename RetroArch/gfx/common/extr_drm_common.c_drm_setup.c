
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int connector_id; } ;
struct TYPE_3__ {int crtc_id; } ;


 int RARCH_WARN (char*) ;
 int drmModeGetCrtc (int,int ) ;
 int g_connector_id ;
 int g_crtc_id ;
 TYPE_2__* g_drm_connector ;
 TYPE_1__* g_drm_encoder ;
 int g_orig_crtc ;

void drm_setup(int fd)
{
   g_crtc_id = g_drm_encoder->crtc_id;
   g_connector_id = g_drm_connector->connector_id;
   g_orig_crtc = drmModeGetCrtc(fd, g_crtc_id);
   if (!g_orig_crtc)
      RARCH_WARN("[DRM]: Cannot find original CRTC.\n");
}
