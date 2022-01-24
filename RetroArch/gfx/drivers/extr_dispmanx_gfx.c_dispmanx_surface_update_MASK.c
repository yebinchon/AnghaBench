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
struct dispmanx_video {scalar_t__ pageflip_pending; int /*<<< orphan*/  update; int /*<<< orphan*/  pending_mutex; int /*<<< orphan*/  vsync_condition; } ;
struct dispmanx_surface {TYPE_1__* next_page; int /*<<< orphan*/  element; int /*<<< orphan*/  bmp_rect; int /*<<< orphan*/  pitch; int /*<<< orphan*/  pixformat; } ;
struct TYPE_2__ {int /*<<< orphan*/  resource; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct dispmanx_video*,struct dispmanx_surface*) ; 
 int /*<<< orphan*/  dispmanx_vsync_callback ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void FUNC8(struct dispmanx_video *_dispvars, const void *frame,
      struct dispmanx_surface *surface)
{
   /* Frame blitting */
   FUNC5(surface->next_page->resource, surface->pixformat,
         surface->pitch, (void*)frame, &(surface->bmp_rect));

   /* Dispmanx doesn't support more than one pending pageflip. Doing so would overwrite
    * the page in the callback function, so we would be always freeing the same page. */
   FUNC2(_dispvars->pending_mutex);
   if (_dispvars->pageflip_pending > 0)
      FUNC1(_dispvars->vsync_condition, _dispvars->pending_mutex);
   FUNC3(_dispvars->pending_mutex);

   /* Issue a page flip that will be done at the next vsync. */
   _dispvars->update = FUNC6(0);

   FUNC4(_dispvars->update, surface->element,
         surface->next_page->resource);

   FUNC2(_dispvars->pending_mutex);
   _dispvars->pageflip_pending++;
   FUNC3(_dispvars->pending_mutex);

   FUNC7(_dispvars->update,
      dispmanx_vsync_callback, (void*)(surface->next_page));

   /* This may block waiting on a new page when max_swapchain_images <= 2 */
   surface->next_page = FUNC0(_dispvars, surface);
}