
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef size_t uint ;
struct modeset_buf {int fb_id; int height; int width; } ;
struct TYPE_12__ {scalar_t__ connection; scalar_t__ encoder_id; int connector_id; } ;
typedef TYPE_1__ drmModeConnector ;
struct TYPE_13__ {int vdisplay; int hdisplay; } ;
struct TYPE_16__ {TYPE_2__ mode; } ;
struct TYPE_15__ {scalar_t__ encoder_id; int crtc_id; } ;
struct TYPE_14__ {int * encoders; scalar_t__ count_encoders; int * connectors; scalar_t__ count_connectors; } ;
struct TYPE_11__ {scalar_t__ fd; TYPE_2__* current_mode; int connector_id; int crtc_id; TYPE_6__* orig_crtc; TYPE_5__* encoder; TYPE_4__* resources; } ;


 int DRM_CLIENT_CAP_ATOMIC ;
 int DRM_CLIENT_CAP_UNIVERSAL_PLANES ;
 int DRM_FORMAT_XRGB8888 ;
 scalar_t__ DRM_MODE_CONNECTED ;
 int O_RDWR ;
 int RARCH_ERR (char*,...) ;
 int RARCH_LOG (char*) ;
 TYPE_10__ drm ;
 int drmModeFreeConnector (TYPE_1__*) ;
 int drmModeFreeEncoder (TYPE_5__*) ;
 TYPE_1__* drmModeGetConnector (scalar_t__,int ) ;
 TYPE_6__* drmModeGetCrtc (scalar_t__,int ) ;
 TYPE_5__* drmModeGetEncoder (scalar_t__,int ) ;
 TYPE_4__* drmModeGetResources (scalar_t__) ;
 scalar_t__ drmModeSetCrtc (scalar_t__,int ,int ,int ,int ,int *,int,TYPE_2__*) ;
 int drmSetClientCap (scalar_t__,int ,int) ;
 int errno ;
 TYPE_2__* g_drm_mode ;
 int modeset_create_dumbfb (scalar_t__,struct modeset_buf*,int,int ) ;
 scalar_t__ open (char*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static bool init_drm(void)
{
   int ret;
   drmModeConnector *connector;
   uint i;

   drm.fd = open("/dev/dri/card0", O_RDWR);

   if (drm.fd < 0)
   {
      RARCH_LOG ("DRM: could not open drm device\n");
      return 0;
   }




   ret = drmSetClientCap(drm.fd, DRM_CLIENT_CAP_UNIVERSAL_PLANES, 1);
   if (ret)
      RARCH_ERR ("DRM: can't set UNIVERSAL PLANES cap.\n");
   else
      RARCH_LOG ("DRM: UNIVERSAL PLANES cap set\n");

   ret = drmSetClientCap(drm.fd, DRM_CLIENT_CAP_ATOMIC, 1);
   if (ret)
   {


      RARCH_ERR ("DRM: can't set ATOMIC caps: %s\n", strerror(errno));
   }
   else
      RARCH_LOG ("DRM: ATOMIC caps set\n");

   drm.resources = drmModeGetResources(drm.fd);
   if (!drm.resources)
   {
      RARCH_ERR ("DRM: drmModeGetResources failed\n");
      return 0;
   }


   for (i = 0; i < (uint)drm.resources->count_connectors; i++)
   {
      connector = drmModeGetConnector(drm.fd, drm.resources->connectors[i]);

      if (connector->connection == DRM_MODE_CONNECTED)
         break;
      drmModeFreeConnector(connector);
      connector = ((void*)0);
   }

   if (!connector)
   {
      RARCH_ERR ("DRM: no connected connector found\n");
      return 0;
   }


   for (i = 0; i < (uint)drm.resources->count_encoders; i++)
   {
      drm.encoder = drmModeGetEncoder(drm.fd, drm.resources->encoders[i]);
      if (drm.encoder->encoder_id == connector->encoder_id)
         break;
      drmModeFreeEncoder(drm.encoder);
      drm.encoder = ((void*)0);
   }

   if (!drm.encoder)
   {
      RARCH_ERR ("DRM: no encoder found.\n");
      return 0;
   }

   drm.crtc_id = drm.encoder->crtc_id;
   drm.connector_id = connector->connector_id;



   drm.orig_crtc = drmModeGetCrtc(drm.fd, drm.encoder->crtc_id);
   drm.current_mode = &(drm.orig_crtc->mode);
   g_drm_mode = drm.current_mode;


   struct modeset_buf buf;
   buf.width = drm.current_mode->hdisplay;
   buf.height = drm.current_mode->vdisplay;
   ret = modeset_create_dumbfb(drm.fd, &buf, 4, DRM_FORMAT_XRGB8888);
   if (ret)
   {
      RARCH_ERR ("DRM: can't create dumb fb\n");
   }

   if (drmModeSetCrtc(drm.fd, drm.crtc_id, buf.fb_id, 0, 0,
            &drm.connector_id, 1, drm.current_mode))
   {
      RARCH_ERR ("DRM: failed to set mode\n");
      return 0;
   }

   return 1;
}
