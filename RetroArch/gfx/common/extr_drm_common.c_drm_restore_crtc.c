
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; int y; int x; int buffer_id; int crtc_id; } ;


 int drmModeFreeCrtc (TYPE_1__*) ;
 int drmModeSetCrtc (int ,int ,int ,int ,int ,int *,int,int *) ;
 int g_connector_id ;
 int g_drm_fd ;
 TYPE_1__* g_orig_crtc ;

void drm_restore_crtc(void)
{
   if (!g_orig_crtc)
      return;

   drmModeSetCrtc(g_drm_fd, g_orig_crtc->crtc_id,
         g_orig_crtc->buffer_id,
         g_orig_crtc->x,
         g_orig_crtc->y,
         &g_connector_id, 1, &g_orig_crtc->mode);

   drmModeFreeCrtc(g_orig_crtc);
   g_orig_crtc = ((void*)0);
}
