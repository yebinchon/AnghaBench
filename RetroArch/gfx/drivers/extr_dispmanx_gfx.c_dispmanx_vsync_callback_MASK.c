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
struct dispmanx_surface {struct dispmanx_page* current_page; } ;
struct dispmanx_page {int used; TYPE_1__* dispvars; int /*<<< orphan*/  page_used_mutex; struct dispmanx_surface* surface; } ;
struct TYPE_2__ {int /*<<< orphan*/  pending_mutex; int /*<<< orphan*/  vsync_condition; int /*<<< orphan*/  pageflip_pending; } ;
typedef  int /*<<< orphan*/  DISPMANX_UPDATE_HANDLE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(DISPMANX_UPDATE_HANDLE_T u, void *data)
{
   struct dispmanx_page *page = data;
   struct dispmanx_surface *surface = page->surface;

   /* Marking the page as free must be done before the signaling
    * so when update_main continues (it won't continue until we signal)
    * we can chose this page as free */
   if (surface->current_page)
   {
      FUNC1(surface->current_page->page_used_mutex);

      /* We mark as free the page that was visible until now */
      surface->current_page->used = false;
      FUNC2(surface->current_page->page_used_mutex);
   }

   /* The page on which we issued the flip that
    * caused this callback becomes the visible one */
   surface->current_page = page;

   /* These two things must be isolated "atomically" to avoid getting
    * a false positive in the pending_mutex test in update_main. */
   FUNC1(page->dispvars->pending_mutex);

   page->dispvars->pageflip_pending--;
   FUNC0(page->dispvars->vsync_condition);

   FUNC2(page->dispvars->pending_mutex);
}