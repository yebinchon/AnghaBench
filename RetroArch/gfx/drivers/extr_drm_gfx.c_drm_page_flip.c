
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_surface {size_t flip_page; TYPE_2__* pages; } ;
typedef int * drmModeAtomicReqPtr ;
struct TYPE_6__ {int fd; int plane_fb_prop_id; int plane_id; } ;
struct TYPE_4__ {int fb_id; } ;
struct TYPE_5__ {TYPE_1__ buf; } ;


 int RARCH_ERR (char*,...) ;
 TYPE_3__ drm ;
 int drmModeAtomicAddProperty (int *,int ,int ,int ) ;
 int * drmModeAtomicAlloc () ;
 int drmModeAtomicCommit (int ,int *,int ,int *) ;
 int drmModeAtomicFree (int *) ;
 int errno ;
 int strerror (int ) ;

__attribute__((used)) static void drm_page_flip(struct drm_surface *surface)
{



   int ret;
   static drmModeAtomicReqPtr req = ((void*)0);

   req = drmModeAtomicAlloc();




   ret = drmModeAtomicAddProperty(req,
         drm.plane_id,
         drm.plane_fb_prop_id,
         surface->pages[surface->flip_page].buf.fb_id);

   if (ret < 0)
   {
      RARCH_ERR ("DRM: failed to add atomic property for pageflip\n");
   }







   ret = drmModeAtomicCommit(drm.fd, req, 0, ((void*)0));

   if (ret < 0)
   {
      RARCH_ERR ("DRM: failed to commit for pageflip: %s\n", strerror(errno));
   }

   surface->flip_page = !(surface->flip_page);

   drmModeAtomicFree(req);
}
