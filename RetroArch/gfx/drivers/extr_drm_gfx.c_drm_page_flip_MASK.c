#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_surface {size_t flip_page; TYPE_2__* pages; } ;
typedef  int /*<<< orphan*/ * drmModeAtomicReqPtr ;
struct TYPE_6__ {int /*<<< orphan*/  fd; int /*<<< orphan*/  plane_fb_prop_id; int /*<<< orphan*/  plane_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  fb_id; } ;
struct TYPE_5__ {TYPE_1__ buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_3__ drm ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct drm_surface *surface)
{
   /* We alredy have the id of the FB_ID property of
    * the plane on which we are going to do a pageflip:
    * we got it back in drm_plane_setup()  */
   int ret;
   static drmModeAtomicReqPtr req = NULL;

   req = FUNC2();

   /* We add the buffer to the plane properties we want to
    * set on an atomically, in a single step.
    * We pass the plane id, the property id and the new fb id. */
   ret = FUNC1(req,
         drm.plane_id,
         drm.plane_fb_prop_id,
         surface->pages[surface->flip_page].buf.fb_id);

   if (ret < 0)
   {
      FUNC0 ("DRM: failed to add atomic property for pageflip\n");
   }
   /*... now we just need to do the commit */

   /* REMEMBER!!! The DRM_MODE_PAGE_FLIP_EVENT flag asks the kernel
    * to send you an event to the drm.fd once the
    * pageflip is complete. If you don't want -12 errors
    * (ENOMEM), namely "Cannot allocate memory", then
    * you must drain the event queue of that fd. */
   ret = FUNC3(drm.fd, req, 0, NULL);

   if (ret < 0)
   {
      FUNC0 ("DRM: failed to commit for pageflip: %s\n", FUNC5(errno));
   }

   surface->flip_page = !(surface->flip_page);

   FUNC4(req);
}