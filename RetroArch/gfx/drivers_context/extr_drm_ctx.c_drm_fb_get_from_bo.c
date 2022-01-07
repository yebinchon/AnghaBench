
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gbm_bo {int dummy; } ;
struct drm_fb {int fb_id; struct gbm_bo* bo; } ;
struct TYPE_2__ {unsigned int u32; } ;


 int RARCH_ERR (char*,int ) ;
 int RARCH_LOG (char*,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ calloc (int,int) ;
 int drmModeAddFB (int ,unsigned int,unsigned int,int,int,unsigned int,unsigned int,int *) ;
 int drm_fb_destroy_callback ;
 int errno ;
 int free (struct drm_fb*) ;
 int g_drm_fd ;
 TYPE_1__ gbm_bo_get_handle (struct gbm_bo*) ;
 unsigned int gbm_bo_get_height (struct gbm_bo*) ;
 unsigned int gbm_bo_get_stride (struct gbm_bo*) ;
 unsigned int gbm_bo_get_width (struct gbm_bo*) ;
 int gbm_bo_set_user_data (struct gbm_bo*,struct drm_fb*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static struct drm_fb *drm_fb_get_from_bo(struct gbm_bo *bo)
{
   int ret;
   unsigned width, height, stride, handle;
   struct drm_fb *fb = (struct drm_fb*)calloc(1, sizeof(*fb));

   fb->bo = bo;

   width = gbm_bo_get_width(bo);
   height = gbm_bo_get_height(bo);
   stride = gbm_bo_get_stride(bo);
   handle = gbm_bo_get_handle(bo).u32;

   RARCH_LOG("[KMS]: New FB: %ux%u (stride: %u).\n",
         width, height, stride);

   ret = drmModeAddFB(g_drm_fd, width, height, 24, 32,
         stride, handle, &fb->fb_id);
   if (ret < 0)
      goto error;

   gbm_bo_set_user_data(bo, fb, drm_fb_destroy_callback);
   return fb;

error:
   RARCH_ERR("[KMS]: Failed to create FB: %s\n", strerror(errno));
   free(fb);
   return ((void*)0);
}
