
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ fb_id; } ;
struct TYPE_5__ {int fd; TYPE_1__* orig_crtc; int connector_id; } ;
struct TYPE_4__ {int mode; int y; int x; int buffer_id; int crtc_id; } ;


 TYPE_3__* bufs ;
 TYPE_2__ drm ;
 int drmModeRmFB (int ,scalar_t__) ;
 int drmModeSetCrtc (int ,int ,int ,int ,int ,int *,int,int *) ;

__attribute__((used)) static void deinit_drm(void)
{


   drmModeSetCrtc(drm.fd, drm.orig_crtc->crtc_id,
         drm.orig_crtc->buffer_id,
         drm.orig_crtc->x, drm.orig_crtc->y,
         &drm.connector_id, 1, &drm.orig_crtc->mode);
}
