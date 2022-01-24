#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gbm_bo {int dummy; } ;
struct drm_fb {int /*<<< orphan*/  fb_id; struct gbm_bo* bo; } ;
struct TYPE_2__ {unsigned int u32; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int,int,int,unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drm_fb_destroy_callback ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (struct drm_fb*) ; 
 int /*<<< orphan*/  g_drm_fd ; 
 TYPE_1__ FUNC5 (struct gbm_bo*) ; 
 unsigned int FUNC6 (struct gbm_bo*) ; 
 unsigned int FUNC7 (struct gbm_bo*) ; 
 unsigned int FUNC8 (struct gbm_bo*) ; 
 int /*<<< orphan*/  FUNC9 (struct gbm_bo*,struct drm_fb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_fb *FUNC11(struct gbm_bo *bo)
{
   int ret;
   unsigned width, height, stride, handle;
   struct drm_fb *fb = (struct drm_fb*)FUNC2(1, sizeof(*fb));

   fb->bo = bo;

   width  = FUNC8(bo);
   height = FUNC6(bo);
   stride = FUNC7(bo);
   handle = FUNC5(bo).u32;

   FUNC1("[KMS]: New FB: %ux%u (stride: %u).\n",
         width, height, stride);

   ret = FUNC3(g_drm_fd, width, height, 24, 32,
         stride, handle, &fb->fb_id);
   if (ret < 0)
      goto error;

   FUNC9(bo, fb, drm_fb_destroy_callback);
   return fb;

error:
   FUNC0("[KMS]: Failed to create FB: %s\n", FUNC10(errno));
   FUNC4(fb);
   return NULL;
}